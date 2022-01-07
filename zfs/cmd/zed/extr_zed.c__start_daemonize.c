
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
typedef scalar_t__ pid_t ;


 int EXIT_SUCCESS ;
 int SIGHUP ;
 int SIG_IGN ;
 int _exit (int ) ;
 int errno ;
 scalar_t__ fork () ;
 scalar_t__ setsid () ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 scalar_t__ sigemptyset (int *) ;
 int strerror (int ) ;
 int zed_log_die (char*,...) ;
 int zed_log_pipe_close_reads () ;
 int zed_log_pipe_close_writes () ;
 int zed_log_pipe_open () ;
 int zed_log_pipe_wait () ;

__attribute__((used)) static void
_start_daemonize(void)
{
 pid_t pid;
 struct sigaction sa;


 zed_log_pipe_open();


 pid = fork();
 if (pid < 0) {
  zed_log_die("Failed to create child process: %s",
      strerror(errno));
 } else if (pid > 0) {


  zed_log_pipe_close_writes();


  zed_log_pipe_wait();

  zed_log_pipe_close_reads();
  _exit(EXIT_SUCCESS);
 }


 zed_log_pipe_close_reads();


 if (setsid() < 0)
  zed_log_die("Failed to create new session: %s",
      strerror(errno));


 if (sigemptyset(&sa.sa_mask) < 0)
  zed_log_die("Failed to initialize sigset");

 sa.sa_flags = 0;
 sa.sa_handler = SIG_IGN;

 if (sigaction(SIGHUP, &sa, ((void*)0)) < 0)
  zed_log_die("Failed to ignore SIGHUP");


 pid = fork();
 if (pid < 0) {
  zed_log_die("Failed to create grandchild process: %s",
      strerror(errno));
 } else if (pid > 0) {
  _exit(EXIT_SUCCESS);
 }
}
