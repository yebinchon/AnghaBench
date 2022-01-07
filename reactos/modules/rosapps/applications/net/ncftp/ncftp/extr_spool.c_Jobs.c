
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int BINDIR ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,int ) ;
 int assert (int ) ;
 int execv (char*,char**) ;
 int execvp (char*,char**) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,char*,...) ;
 int perror (char*) ;
 int stderr ;
 int wait (int *) ;
 int waitpid (scalar_t__,int *,int ) ;

void
Jobs(void)
{



 char *argv[8];
 pid_t pid;
 pid = fork();
 if (pid < 0) {
  perror("fork");
 } else if (pid == 0) {
  argv[0] = (char *) "ncftpbatch";
  argv[1] = (char *) "-l";
  argv[2] = ((void*)0);





  (void) execvp(argv[0], argv);
  (void) fprintf(stderr, "Could not run %s.  Is it in your $PATH?\n", argv[0]);

  perror(argv[0]);
  exit(1);
 } else {



  (void) wait(((void*)0));

 }

}
