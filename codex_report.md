# Dependency Error Report

## Dependency

`peter-jerry-ye/io@0.3.4`

## Command

```bash
moon check
```

## Error

`moon check` fails while calculating the build plan:

```text
Error: Failed to calculate build plan

Caused by:
    0: Failed to solve package relationship
    1: Import tonyfettes/encoding@0.3.7 exists in global environment,
               but its containing module is not imported by peter-jerry-ye/io@0.3.4, thus cannot be imported by its package 'http'
```

## Attempted Fix

Ran:

```bash
moon add peter-jerry-ye/io
```

The command completed, but did not update `moon.mod.json` or any other tracked repository file. Running `moon check` afterwards produced the same dependency resolution error.

## Conclusion

The failure comes from `peter-jerry-ye/io@0.3.4`: its `http` package imports `tonyfettes/encoding@0.3.7`, but that containing module is not declared by `peter-jerry-ye/io@0.3.4`. This needs to be fixed in the dependency or by moving this repository to a dependency version where that relationship is declared correctly.
