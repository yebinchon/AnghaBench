
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pid_t ;
typedef int ncftpbatch ;
struct TYPE_4__ {scalar_t__ lip; } ;
typedef int FTPLibraryInfo ;
typedef int FTPConnectionInfo ;
typedef TYPE_1__* FTPCIPtr ;


 int BINDIR ;
 int CloseControlConnection (TYPE_1__* const) ;



 int OurInstallationPath (char*,int,char*) ;
 int PWrite (int,char const*,int) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,int ) ;
 int SW_SHOWNORMAL ;
 int WinExec (char const*,int ) ;
 int close (int) ;
 int execv (char*,char**) ;
 int execvp (char*,char**) ;
 int exit (int) ;
 int fork () ;
 int fprintf (int ,char*,char const*,...) ;
 char* gOurInstallationPath ;
 int perror (char*) ;
 scalar_t__ pipe (int*) ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int wait (int *) ;
 int waitpid (int,int *,int ) ;

void
RunBatch(int Xstruct, const FTPCIPtr cip)
{
 int pfd[2];
 char pfdstr[32];
 char *argv[8];
 pid_t pid = 0;
 if (Xstruct != 0) {
  if (pipe(pfd) < 0) {
   perror("pipe");
  }

  (void) sprintf(pfdstr, "%d", pfd[0]);
  pid = fork();
  if (pid < 0) {
   (void) close(pfd[0]);
   (void) close(pfd[1]);
   perror("fork");
  } else if (pid == 0) {
   (void) close(pfd[1]);
   argv[0] = (char *) "ncftpbatch";



   argv[1] = (char *) "-d";

   argv[2] = (char *) "-|";
   argv[3] = pfdstr;
   argv[4] = ((void*)0);





   (void) execvp(argv[0], argv);
   (void) fprintf(stderr, "Could not run %s.  Is it in your $PATH?\n", argv[0]);

   perror(argv[0]);
   exit(1);
  }
  (void) close(pfd[0]);
  (void) PWrite(pfd[1], (const char *) cip->lip, sizeof(FTPLibraryInfo));
  (void) PWrite(pfd[1], (const char *) cip, sizeof(FTPConnectionInfo));
  (void) close(pfd[1]);





  CloseControlConnection(cip);
 } else {
  pid = fork();
  if (pid < 0) {
   perror("fork");
  } else if (pid == 0) {
   argv[0] = (char *) "ncftpbatch";
   argv[1] = (char *) "-d";
   argv[2] = ((void*)0);




   (void) execvp(argv[0], argv);
   (void) fprintf(stderr, "Could not run %s.  Is it in your $PATH?\n", argv[0]);

   perror(argv[0]);
   exit(1);
  }
 }

 if (pid > 1) {



  (void) wait(((void*)0));

 }

}
