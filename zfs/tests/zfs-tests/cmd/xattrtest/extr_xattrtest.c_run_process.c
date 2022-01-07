
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ EINTR ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int _exit (int) ;
 int close (int) ;
 int dup2 (int,int ) ;
 scalar_t__ errno ;
 int execvp (char const*,char**) ;
 int open (char*,int ) ;
 scalar_t__ vfork () ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int
run_process(const char *path, char *argv[])
{
 pid_t pid;
 int rc, devnull_fd;

 pid = vfork();
 if (pid == 0) {
  devnull_fd = open("/dev/null", O_WRONLY);

  if (devnull_fd < 0)
   _exit(-1);

  (void) dup2(devnull_fd, STDOUT_FILENO);
  (void) dup2(devnull_fd, STDERR_FILENO);
  close(devnull_fd);

  (void) execvp(path, argv);
  _exit(-1);
 } else if (pid > 0) {
  int status;

  while ((rc = waitpid(pid, &status, 0)) == -1 &&
      errno == EINTR) { }

  if (rc < 0 || !WIFEXITED(status))
   return (-1);

  return (WEXITSTATUS(status));
 }

 return (-1);
}
