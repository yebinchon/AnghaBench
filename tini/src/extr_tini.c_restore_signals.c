
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sigttou_action_ptr; int sigttin_action_ptr; int sigmask_ptr; } ;
typedef TYPE_1__ signal_configuration_t ;


 int PRINT_FATAL (char*,int ) ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_SETMASK ;
 int errno ;
 scalar_t__ sigaction (int ,int ,int *) ;
 scalar_t__ sigprocmask (int ,int ,int *) ;
 int strerror (int ) ;

int restore_signals(const signal_configuration_t* const sigconf_ptr) {
 if (sigprocmask(SIG_SETMASK, sigconf_ptr->sigmask_ptr, ((void*)0))) {
  PRINT_FATAL("Restoring child signal mask failed: '%s'", strerror(errno));
  return 1;
 }

 if (sigaction(SIGTTIN, sigconf_ptr->sigttin_action_ptr, ((void*)0))) {
  PRINT_FATAL("Restoring SIGTTIN handler failed: '%s'", strerror((errno)));
  return 1;
 }

 if (sigaction(SIGTTOU, sigconf_ptr->sigttou_action_ptr, ((void*)0))) {
  PRINT_FATAL("Restoring SIGTTOU handler failed: '%s'", strerror((errno)));
  return 1;
 }

 return 0;
}
