
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int close (scalar_t__) ;
 int exit (int ) ;
 int print_backtrace () ;
 int readline_disabled ;
 int rl_cleanup_after_signal () ;
 int rl_free_line_state () ;
 scalar_t__ sfd ;
 scalar_t__ unix_socket ;
 int unlink (scalar_t__) ;
 scalar_t__ usfd ;
 scalar_t__ write (int,char*,int) ;

void termination_signal_handler (int signum) {
  if (!readline_disabled) {
    rl_free_line_state ();
    rl_cleanup_after_signal ();
  }

  if (write (1, "SIGNAL received\n", 18) < 0) {

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
  print_backtrace ();

  exit (EXIT_FAILURE);
}
