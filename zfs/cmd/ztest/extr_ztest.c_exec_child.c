
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_0; int member_1; } ;
typedef int pid_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int MAXPATHLEN ;
 int RLIMIT_NOFILE ;
 scalar_t__ SIGKILL ;
 int UMEM_NOFAIL ;
 int VERIFY (int) ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int close (int ) ;
 int enable_extended_FILE_stdio (int,int) ;
 int execv (char*,char**) ;
 int exit (int) ;
 int fatal (int,char*,...) ;
 int fork () ;
 int fprintf (int ,char*,...) ;
 int getexecname () ;
 scalar_t__ setenv (char*,char*,int) ;
 int setrlimit (int ,struct rlimit*) ;
 int snprintf (char*,int,char*,int) ;
 int stderr ;
 int strlcpy (char*,int ,int ) ;
 char* umem_alloc (int ,int ) ;
 int umem_free (char*,int ) ;
 int waitpid (int,int*,int ) ;
 int ztest_dump_core ;
 int ztest_fd_data ;
 int ztest_fd_rand ;

__attribute__((used)) static boolean_t
exec_child(char *cmd, char *libpath, boolean_t ignorekill, int *statusp)
{
 pid_t pid;
 int status;
 char *cmdbuf = ((void*)0);

 pid = fork();

 if (cmd == ((void*)0)) {
  cmdbuf = umem_alloc(MAXPATHLEN, UMEM_NOFAIL);
  (void) strlcpy(cmdbuf, getexecname(), MAXPATHLEN);
  cmd = cmdbuf;
 }

 if (pid == -1)
  fatal(1, "fork failed");

 if (pid == 0) {
  char *emptyargv[2] = { cmd, ((void*)0) };
  char fd_data_str[12];

  struct rlimit rl = { 1024, 1024 };
  (void) setrlimit(RLIMIT_NOFILE, &rl);

  (void) close(ztest_fd_rand);
  VERIFY(11 >= snprintf(fd_data_str, 12, "%d", ztest_fd_data));
  VERIFY(0 == setenv("ZTEST_FD_DATA", fd_data_str, 1));

  (void) enable_extended_FILE_stdio(-1, -1);
  if (libpath != ((void*)0))
   VERIFY(0 == setenv("LD_LIBRARY_PATH", libpath, 1));
  (void) execv(cmd, emptyargv);
  ztest_dump_core = B_FALSE;
  fatal(B_TRUE, "exec failed: %s", cmd);
 }

 if (cmdbuf != ((void*)0)) {
  umem_free(cmdbuf, MAXPATHLEN);
  cmd = ((void*)0);
 }

 while (waitpid(pid, &status, 0) != pid)
  continue;
 if (statusp != ((void*)0))
  *statusp = status;

 if (WIFEXITED(status)) {
  if (WEXITSTATUS(status) != 0) {
   (void) fprintf(stderr, "child exited with code %d\n",
       WEXITSTATUS(status));
   exit(2);
  }
  return (B_FALSE);
 } else if (WIFSIGNALED(status)) {
  if (!ignorekill || WTERMSIG(status) != SIGKILL) {
   (void) fprintf(stderr, "child died with signal %d\n",
       WTERMSIG(status));
   exit(3);
  }
  return (B_TRUE);
 } else {
  (void) fprintf(stderr, "something strange happened to child\n");
  exit(4);

 }
}
