
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int MAXPATHLEN ;
 char NUL ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 int free (char*) ;
 int * getcwd (char*,int) ;
 char* getenv (char*) ;
 scalar_t__ malloc (int) ;
 int setDollarVim (char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 char* strtok (char*,char*) ;
 int vim_FullName (int *,int *,int,int) ;

void
findYourself(
    char *argv0)
{
    char *runpath = ((void*)0);
    char *path;
    char *pathbuf;

    if (*argv0 == '/')
 runpath = strdup(argv0);
    else if (*argv0 == '.' || strchr(argv0, '/'))
    {
 runpath = (char *) malloc(MAXPATHLEN);
 if (getcwd(runpath, MAXPATHLEN) == ((void*)0))
     runpath[0] = NUL;
 strcat(runpath, "/");
 strcat(runpath, argv0);
    }
    else
    {
 path = getenv("PATH");
 if (path != ((void*)0))
 {
     runpath = (char *) malloc(MAXPATHLEN);
     pathbuf = strdup(path);
     path = strtok(pathbuf, ":");
     do
     {
  strcpy(runpath, path);
  strcat(runpath, "/");
  strcat(runpath, argv0);
  if (access(runpath, X_OK) == 0)
      break;
     } while ((path = strtok(((void*)0), ":")) != ((void*)0));
     free(pathbuf);
 }
    }

    if (runpath != ((void*)0))
    {
 char runbuf[MAXPATHLEN];




 (void)vim_FullName((char_u *)runpath, (char_u *)runbuf, MAXPATHLEN, 1);
 path = strrchr(runbuf, '/');
 if (path != ((void*)0))
     *path = NUL;
 path = strrchr(runbuf, '/');
 if (path != ((void*)0))
 {
     if (strncmp(path, "/bin", 4) == 0)
  setDollarVim(runbuf);
     else if (strncmp(path, "/src", 4) == 0)
     {
  *path = NUL;
  setDollarVim(runbuf);
     }
 }
 free(runpath);
    }
}
