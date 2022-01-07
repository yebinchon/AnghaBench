
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ECHILD ;
 int INT32_BITFIELD_CHECK_BOUNDS (int ,int) ;
 int INT32_BITFIELD_TEST (int ,int) ;
 int PRINT_DEBUG (char*,int) ;
 int PRINT_FATAL (char*,...) ;
 int PRINT_INFO (char*,int) ;
 int PRINT_TRACE (char*) ;
 int PRINT_WARNING (char*,int) ;
 scalar_t__ STATUS_MAX ;
 scalar_t__ STATUS_MIN ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 int errno ;
 int expect_status ;
 int strerror (int ) ;
 int strsignal (int ) ;
 int waitpid (int,int*,int ) ;
 int warn_on_reap ;

int reap_zombies(const pid_t child_pid, int* const child_exitcode_ptr) {
 pid_t current_pid;
 int current_status;

 while (1) {
  current_pid = waitpid(-1, &current_status, WNOHANG);

  switch (current_pid) {

   case -1:
    if (errno == ECHILD) {
     PRINT_TRACE("No child to wait");
     break;
    }
    PRINT_FATAL("Error while waiting for pids: '%s'", strerror(errno));
    return 1;

   case 0:
    PRINT_TRACE("No child to reap");
    break;

   default:



    PRINT_DEBUG("Reaped child with pid: '%i'", current_pid);
    if (current_pid == child_pid) {
     if (WIFEXITED(current_status)) {

      PRINT_INFO("Main child exited normally (with status '%i')", WEXITSTATUS(current_status));
      *child_exitcode_ptr = WEXITSTATUS(current_status);
     } else if (WIFSIGNALED(current_status)) {



      PRINT_INFO("Main child exited with signal (with signal '%s')", strsignal(WTERMSIG(current_status)));
      *child_exitcode_ptr = 128 + WTERMSIG(current_status);
     } else {
      PRINT_FATAL("Main child exited for unknown reason");
      return 1;
     }


     *child_exitcode_ptr = *child_exitcode_ptr % (STATUS_MAX - STATUS_MIN + 1);


     INT32_BITFIELD_CHECK_BOUNDS(expect_status, *child_exitcode_ptr);
     if (INT32_BITFIELD_TEST(expect_status, *child_exitcode_ptr)) {
      *child_exitcode_ptr = 0;
     }
    } else if (warn_on_reap > 0) {
     PRINT_WARNING("Reaped zombie process with pid=%i", current_pid);
    }


    continue;
  }


  break;
 }

 return 0;
}
