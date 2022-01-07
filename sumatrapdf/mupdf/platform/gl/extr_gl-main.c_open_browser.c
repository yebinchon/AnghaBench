
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int SW_SHOWNORMAL ;
 int ShellExecuteA (int *,char*,char const*,int ,int ,int ) ;
 int execlp (char const*,char const*,char const*,char*) ;
 int exit (int ) ;
 int filename ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,char const*) ;
 int fz_cleanname (char*) ;
 int fz_dirname (char*,int ,int) ;
 int fz_snprintf (char*,int,char*,char*,char*,char const*) ;
 int getcwd (char*,int) ;
 char* getenv (char*) ;
 int stderr ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void open_browser(const char *uri)
{
 char buf[PATH_MAX];


 if (!strncmp(uri, "file://", 7) && uri[7] != '/')
 {
  char buf_base[PATH_MAX];
  char buf_cwd[PATH_MAX];
  fz_dirname(buf_base, filename, sizeof buf_base);
  getcwd(buf_cwd, sizeof buf_cwd);
  fz_snprintf(buf, sizeof buf, "file://%s/%s/%s", buf_cwd, buf_base, uri+7);
  fz_cleanname(buf+7);
  uri = buf;
 }




 const char *browser = getenv("BROWSER");
 if (!browser)
 {



  browser = "xdg-open";

 }
 if (fork() == 0)
 {
  execlp(browser, browser, uri, (char*)0);
  fprintf(stderr, "cannot exec '%s'\n", browser);
  exit(0);
 }

}
