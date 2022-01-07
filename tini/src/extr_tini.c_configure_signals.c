
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
struct sigaction {int sa_mask; int sa_handler; } ;
typedef int sigset_t ;
struct TYPE_3__ {int sigttou_action_ptr; int sigttin_action_ptr; int sigmask_ptr; } ;
typedef TYPE_1__ signal_configuration_t ;


 size_t ARRAY_LEN (int*) ;
 int PRINT_FATAL (char*,...) ;
 int SIGABRT ;
 int SIGBUS ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int SIGSYS ;
 int SIGTRAP ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_IGN ;
 int SIG_SETMASK ;
 int errno ;
 int memset (struct sigaction*,int ,int) ;
 scalar_t__ sigaction (int,struct sigaction*,int ) ;
 scalar_t__ sigdelset (int * const,int) ;
 int sigemptyset (int *) ;
 scalar_t__ sigfillset (int * const) ;
 scalar_t__ sigprocmask (int ,int * const,int ) ;
 int strerror (int ) ;

int configure_signals(sigset_t* const parent_sigset_ptr, const signal_configuration_t* const sigconf_ptr) {

 if (sigfillset(parent_sigset_ptr)) {
  PRINT_FATAL("sigfillset failed: '%s'", strerror(errno));
  return 1;
 }


 uint i;
 int signals_for_tini[] = {SIGFPE, SIGILL, SIGSEGV, SIGBUS, SIGABRT, SIGTRAP, SIGSYS, SIGTTIN, SIGTTOU};
 for (i = 0; i < ARRAY_LEN(signals_for_tini); i++) {
  if (sigdelset(parent_sigset_ptr, signals_for_tini[i])) {
   PRINT_FATAL("sigdelset failed: '%i'", signals_for_tini[i]);
   return 1;
  }
 }

 if (sigprocmask(SIG_SETMASK, parent_sigset_ptr, sigconf_ptr->sigmask_ptr)) {
  PRINT_FATAL("sigprocmask failed: '%s'", strerror(errno));
  return 1;
 }





 struct sigaction ign_action;
 memset(&ign_action, 0, sizeof ign_action);

 ign_action.sa_handler = SIG_IGN;
 sigemptyset(&ign_action.sa_mask);

 if (sigaction(SIGTTIN, &ign_action, sigconf_ptr->sigttin_action_ptr)) {
  PRINT_FATAL("Failed to ignore SIGTTIN");
  return 1;
 }

 if (sigaction(SIGTTOU, &ign_action, sigconf_ptr->sigttou_action_ptr)) {
  PRINT_FATAL("Failed to ignore SIGTTOU");
  return 1;
 }

 return 0;
}
