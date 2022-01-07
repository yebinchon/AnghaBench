
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct cmd_results {int dummy; } ;
typedef int ssize_t ;
typedef int sigset_t ;
typedef scalar_t__ pid_t ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ validating; int active; } ;


 int CMD_DEFER ;
 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int SIG_SETMASK ;
 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int SWAY_INFO ;
 int _exit (int ) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 int close (int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 int execl (char*,char*,char*,char*,void*) ;
 scalar_t__ fork () ;
 int free (char*) ;
 char* join_args (char**,int) ;
 scalar_t__ pipe (int*) ;
 int read (int,int *,int) ;
 int root_record_workspace_pid (scalar_t__) ;
 int setsid () ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strip_quotes (char*) ;
 int strncpy (char*,char*,int) ;
 int sway_log (int ,char*,...) ;
 int waitpid (scalar_t__,int *,int ) ;
 int write (int,int *,int) ;

struct cmd_results *cmd_exec_always(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if (!config->active || config->validating) {
  return cmd_results_new(CMD_DEFER, ((void*)0));
 }
 if ((error = checkarg(argc, argv[-1], EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 char *tmp = ((void*)0);
 if (strcmp(argv[0], "--no-startup-id") == 0) {
  sway_log(SWAY_INFO, "exec switch '--no-startup-id' not supported, ignored.");
  --argc; ++argv;
  if ((error = checkarg(argc, argv[-1], EXPECTED_AT_LEAST, 1))) {
   return error;
  }
 }

 if (argc == 1 && (argv[0][0] == '\'' || argv[0][0] == '"')) {
  tmp = strdup(argv[0]);
  strip_quotes(tmp);
 } else {
  tmp = join_args(argv, argc);
 }


 char cmd[4096];
 strncpy(cmd, tmp, sizeof(cmd) - 1);
 cmd[sizeof(cmd) - 1] = 0;
 free(tmp);
 sway_log(SWAY_DEBUG, "Executing %s", cmd);

 int fd[2];
 if (pipe(fd) != 0) {
  sway_log(SWAY_ERROR, "Unable to create pipe for fork");
 }

 pid_t pid, child;

 if ((pid = fork()) == 0) {

  setsid();
  sigset_t set;
  sigemptyset(&set);
  sigprocmask(SIG_SETMASK, &set, ((void*)0));
  close(fd[0]);
  if ((child = fork()) == 0) {
   close(fd[1]);
   execl("/bin/sh", "/bin/sh", "-c", cmd, (void *)((void*)0));
   _exit(0);
  }
  ssize_t s = 0;
  while ((size_t)s < sizeof(pid_t)) {
   s += write(fd[1], ((uint8_t *)&child) + s, sizeof(pid_t) - s);
  }
  close(fd[1]);
  _exit(0);
 } else if (pid < 0) {
  close(fd[0]);
  close(fd[1]);
  return cmd_results_new(CMD_FAILURE, "fork() failed");
 }
 close(fd[1]);
 ssize_t s = 0;
 while ((size_t)s < sizeof(pid_t)) {
  s += read(fd[0], ((uint8_t *)&child) + s, sizeof(pid_t) - s);
 }
 close(fd[0]);

 waitpid(pid, ((void*)0), 0);
 if (child > 0) {
  sway_log(SWAY_DEBUG, "Child process created with pid %d", child);
  root_record_workspace_pid(child);
 } else {
  return cmd_results_new(CMD_FAILURE, "Second fork() failed");
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
