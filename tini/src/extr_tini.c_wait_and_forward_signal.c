
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t ;
struct TYPE_3__ {int si_signo; } ;
typedef TYPE_1__ siginfo_t ;
typedef int pid_t ;




 int ESRCH ;
 int PRINT_DEBUG (char*,...) ;
 int PRINT_FATAL (char*,int ) ;
 int PRINT_WARNING (char*) ;

 int errno ;
 int kill (int const,int) ;
 int kill_process_group ;
 int sigtimedwait (int const* const,TYPE_1__*,int *) ;
 int strerror (int) ;
 int strsignal (int) ;
 int ts ;

int wait_and_forward_signal(sigset_t const* const parent_sigset_ptr, pid_t const child_pid) {
 siginfo_t sig;

 if (sigtimedwait(parent_sigset_ptr, &sig, &ts) == -1) {
  switch (errno) {
   case 130:
    break;
   case 129:
    break;
   default:
    PRINT_FATAL("Unexpected error in sigtimedwait: '%s'", strerror(errno));
    return 1;
  }
 } else {

  switch (sig.si_signo) {
   case 128:



    PRINT_DEBUG("Received SIGCHLD");
    break;
   default:
    PRINT_DEBUG("Passing signal: '%s'", strsignal(sig.si_signo));

    if (kill(kill_process_group ? -child_pid : child_pid, sig.si_signo)) {
     if (errno == ESRCH) {
      PRINT_WARNING("Child was dead when forwarding signal");
     } else {
      PRINT_FATAL("Unexpected error when forwarding signal: '%s'", strerror(errno));
      return 1;
     }
    }
    break;
  }
 }

 return 0;
}
