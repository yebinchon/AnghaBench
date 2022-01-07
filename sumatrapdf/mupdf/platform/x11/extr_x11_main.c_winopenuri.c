
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int pdfapp_t ;


 int execlp (char*,char*,char*,char*) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,char*) ;
 char* getenv (char*) ;
 int stderr ;
 int waitpid (scalar_t__,int *,int ) ;

void winopenuri(pdfapp_t *app, char *buf)
{
 char *browser = getenv("BROWSER");
 pid_t pid;
 if (!browser)
 {



  browser = "xdg-open";

 }





 pid = fork();
 if (pid == 0)
 {
  if (fork() == 0)
  {
   execlp(browser, browser, buf, (char*)0);
   fprintf(stderr, "cannot exec '%s'\n", browser);
  }
  exit(0);
 }
 waitpid(pid, ((void*)0), 0);
}
