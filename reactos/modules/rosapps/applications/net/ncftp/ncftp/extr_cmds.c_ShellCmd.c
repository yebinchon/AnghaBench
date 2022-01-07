
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vsigproc_t ;
typedef scalar_t__ pid_t ;
typedef int FTPSigProc ;
typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 scalar_t__ EINTR ;
 int NcSignal (int ,int ) ;
 int SIGINT ;
 scalar_t__ SIG_IGN ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 scalar_t__ errno ;
 int execl (char*,char const*,int *) ;
 int execvp (char const*,char**) ;
 int exit (int) ;
 scalar_t__ fork () ;
 char* gShell ;
 int gUnusedArg ;
 int perror (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ wait (int*) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

void
ShellCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{


 const char *cp;
 pid_t pid;
 int status;
 vsigproc_t osigint;

 osigint = NcSignal(SIGINT, (FTPSigProc) SIG_IGN);
 ARGSUSED(gUnusedArg);
 pid = fork();
 if (pid < (pid_t) 0) {
  perror("fork");
 } else if (pid == 0) {
  cp = strrchr(gShell, '/');
  if (cp == ((void*)0))
   cp = gShell;
  else
   cp++;
  if (argc == 1) {
   execl(gShell, cp, ((void*)0));
   perror(gShell);
   exit(1);
  } else {
   execvp(argv[1], (char **) argv + 1);
   perror(gShell);
   exit(1);
  }
 } else {

  for (;;) {




   if ((wait(&status) < 0) && (errno != EINTR))
    break;

   if (WIFEXITED(status) || WIFSIGNALED(status))
    break;
  }
 }
 (void) NcSignal(SIGINT, osigint);

}
