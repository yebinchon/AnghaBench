
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int close (int) ;
 int exit (int ) ;
 int fail (char*,int) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,long) ;
 int setsid () ;
 int stdout ;

__attribute__((used)) static void
daemonize(void)
{
 pid_t pid;

 if ((pid = fork()) < 0) {
  fail("fork", 1);
 } else if (pid != 0) {
  (void) fprintf(stdout, "%ld\n", (long)pid);
  exit(0);
 }

 (void) setsid();
 (void) close(0);
 (void) close(1);
 (void) close(2);
}
