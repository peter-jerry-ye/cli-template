///|
/// Run the program.
pub fn run() -> Result[Unit, Unit] {
  top()
}

///|
/// User should change this function to do what they want
fn top() -> Result[Unit, Unit] {
  let stdout = @stdout.get_stdout()
  let result = stdout.blocking_write_and_flush(b"Hello, world!\n".to_fixedarray())
  stdout.drop()
  match result {
    Ok(_) => Ok(())
    Err(_) => Err(())
  }
}
