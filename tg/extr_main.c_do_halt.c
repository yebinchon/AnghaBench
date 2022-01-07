
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int close (scalar_t__) ;
 scalar_t__ daemonize ;
 int exit (int) ;
 int exit_code ;
 int readline_disabled ;
 int rl_cleanup_after_signal () ;
 int rl_free_line_state () ;
 scalar_t__ sfd ;
 scalar_t__ unix_socket ;
 int unlink (scalar_t__) ;
 scalar_t__ usfd ;
 scalar_t__ write (int,char*,int) ;

void do_halt (int error) {
  int retval;
  if (daemonize) {
    return;
  }

  if (!readline_disabled) {
    rl_free_line_state ();
    rl_cleanup_after_signal ();
  }

  if (write (1, "halt\n", 5) < 0) {

  }

  if (unix_socket) {
    unlink (unix_socket);
  }

  if (usfd > 0) {
    close (usfd);
  }
  if (sfd > 0) {
    close (sfd);
  }

  if (exit_code) {
    retval = exit_code;
  } else {
    retval = error ? EXIT_FAILURE : EXIT_SUCCESS;
  }

  exit (retval);
}
