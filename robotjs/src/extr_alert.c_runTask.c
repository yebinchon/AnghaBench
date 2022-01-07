
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EXEC_FAILED ;
 int FORK_FAILED ;
 int TASK_SUCCESS ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int execvp (char const*,char* const*) ;
 int exit (int) ;
 int fork () ;
 int perror (char*) ;
 int wait (int*) ;

__attribute__((used)) static int runTask(const char *taskname, char * const argv[], int *exit_status)
{
 pid_t pid;
 int status;

 switch (pid = fork()) {
  case -1:
   perror("fork");
   return FORK_FAILED;
  case 0:
   execvp(taskname, argv);
   exit(42);
  default:
   wait(&status);

   if (!WIFEXITED(status) || (status = WEXITSTATUS(status)) == 42) {
    return EXEC_FAILED;
   }
   if (exit_status != ((void*)0)) *exit_status = status;
   return TASK_SUCCESS;
 }
}
