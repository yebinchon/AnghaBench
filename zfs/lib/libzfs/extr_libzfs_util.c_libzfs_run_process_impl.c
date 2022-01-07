
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ EINTR ;
 int EPIPE ;
 int NO_DEFAULT_PATH ;
 int O_WRONLY ;
 int STDERR_FILENO ;
 int STDERR_VERBOSE ;
 int STDOUT_FILENO ;
 int STDOUT_VERBOSE ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int _exit (int) ;
 int close (int) ;
 int dup2 (int,int ) ;
 scalar_t__ errno ;
 int execv (char const*,char**) ;
 int execve (char const*,char**,char**) ;
 int execvp (char const*,char**) ;
 int execvpe (char const*,char**,char**) ;
 int libzfs_read_stdout_from_fd (int,char***) ;
 int open (char*,int ) ;
 int pipe (int*) ;
 scalar_t__ vfork () ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int
libzfs_run_process_impl(const char *path, char *argv[], char *env[], int flags,
    char **lines[], int *lines_cnt)
{
 pid_t pid;
 int error, devnull_fd;
 int link[2];





 if ((lines != ((void*)0)) && pipe(link) == -1)
  return (-EPIPE);

 pid = vfork();
 if (pid == 0) {

  devnull_fd = open("/dev/null", O_WRONLY);

  if (devnull_fd < 0)
   _exit(-1);

  if (!(flags & STDOUT_VERBOSE) && (lines == ((void*)0)))
   (void) dup2(devnull_fd, STDOUT_FILENO);
  else if (lines != ((void*)0)) {

   dup2(link[1], STDOUT_FILENO);
   close(link[0]);
   close(link[1]);
  }

  if (!(flags & STDERR_VERBOSE))
   (void) dup2(devnull_fd, STDERR_FILENO);

  close(devnull_fd);

  if (flags & NO_DEFAULT_PATH) {
   if (env == ((void*)0))
    execv(path, argv);
   else
    execve(path, argv, env);
  } else {
   if (env == ((void*)0))
    execvp(path, argv);
   else
    execvpe(path, argv, env);
  }

  _exit(-1);
 } else if (pid > 0) {

  int status;

  while ((error = waitpid(pid, &status, 0)) == -1 &&
      errno == EINTR) { }
  if (error < 0 || !WIFEXITED(status))
   return (-1);

  if (lines != ((void*)0)) {
   close(link[1]);
   *lines_cnt = libzfs_read_stdout_from_fd(link[0], lines);
  }
  return (WEXITSTATUS(status));
 }

 return (-1);
}
