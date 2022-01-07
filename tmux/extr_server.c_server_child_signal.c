
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int ECHILD ;
 int WAIT_ANY ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ WIFSTOPPED (int) ;
 int WNOHANG ;
 int WUNTRACED ;
 int errno ;
 int fatal (char*) ;
 int server_child_exited (int ,int) ;
 int server_child_stopped (int ,int) ;
 int waitpid (int ,int*,int) ;

__attribute__((used)) static void
server_child_signal(void)
{
 int status;
 pid_t pid;

 for (;;) {
  switch (pid = waitpid(WAIT_ANY, &status, WNOHANG|WUNTRACED)) {
  case -1:
   if (errno == ECHILD)
    return;
   fatal("waitpid failed");
  case 0:
   return;
  }
  if (WIFSTOPPED(status))
   server_child_stopped(pid, status);
  else if (WIFEXITED(status) || WIFSIGNALED(status))
   server_child_exited(pid, status);
 }
}
