
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sigaction {int dummy; } ;
typedef int sigset_t ;
struct TYPE_4__ {struct sigaction* sigttou_action_ptr; struct sigaction* sigttin_action_ptr; int * sigmask_ptr; } ;
typedef TYPE_1__ signal_configuration_t ;
typedef int pid_t ;


 int PRINT_FATAL (char*) ;
 int PRINT_TRACE (char*) ;
 int PR_SET_PDEATHSIG ;
 scalar_t__ configure_signals (int *,TYPE_1__*) ;
 int free (char***) ;
 int memset (struct sigaction*,int ,int) ;
 scalar_t__ parent_death_signal ;
 int parse_args (int,char**,char****,int*) ;
 scalar_t__ parse_env () ;
 scalar_t__ prctl (int ,scalar_t__) ;
 scalar_t__ reap_zombies (int ,int*) ;
 int reaper_check () ;
 scalar_t__ register_subreaper () ;
 int spawn (TYPE_1__*,char**,int *) ;
 scalar_t__ wait_and_forward_signal (int *,int ) ;

int main(int argc, char *argv[]) {
 pid_t child_pid;


 int child_exitcode = -1;
 int parse_exitcode = 1;


 char* (*child_args_ptr)[];
 int parse_args_ret = parse_args(argc, argv, &child_args_ptr, &parse_exitcode);
 if (parse_args_ret) {
  return parse_exitcode;
 }


 if (parse_env()) {
  return 1;
 }


 sigset_t parent_sigset, child_sigset;
 struct sigaction sigttin_action, sigttou_action;
 memset(&sigttin_action, 0, sizeof sigttin_action);
 memset(&sigttou_action, 0, sizeof sigttou_action);

 signal_configuration_t child_sigconf = {
  .sigmask_ptr = &child_sigset,
  .sigttin_action_ptr = &sigttin_action,
  .sigttou_action_ptr = &sigttou_action,
 };

 if (configure_signals(&parent_sigset, &child_sigconf)) {
  return 1;
 }


 if (parent_death_signal && prctl(PR_SET_PDEATHSIG, parent_death_signal)) {
  PRINT_FATAL("Failed to set up parent death signal");
  return 1;
  }
 reaper_check();


 int spawn_ret = spawn(&child_sigconf, *child_args_ptr, &child_pid);
 if (spawn_ret) {
  return spawn_ret;
 }
 free(child_args_ptr);

 while (1) {

  if (wait_and_forward_signal(&parent_sigset, child_pid)) {
   return 1;
  }


  if (reap_zombies(child_pid, &child_exitcode)) {
   return 1;
  }

  if (child_exitcode != -1) {
   PRINT_TRACE("Exiting: child has exited");
   return child_exitcode;
  }
 }
}
