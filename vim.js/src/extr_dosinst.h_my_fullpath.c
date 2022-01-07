
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 int BUFSIZE ;
 scalar_t__ GetModuleFileName (int *,char*,size_t) ;
 char NUL ;
 int add_pathsep (char*) ;
 int * getcwd (char*,int) ;
 scalar_t__ mch_chdir (char*) ;
 int myexit (int) ;
 int printf (char*) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
my_fullpath(char *buf, char *fname, int len)
{







    char olddir[BUFSIZE];
    char *p, *q;
    int c;
    char *retval = buf;

    if (strchr(fname, ':') != ((void*)0))
    {
 strncpy(buf, fname, len);
    }
    else
    {
 *buf = NUL;





 p = strrchr(fname, '/');
 q = strrchr(fname, '\\');
 if (q != ((void*)0) && (p == ((void*)0) || q > p))
     p = q;
 q = strrchr(fname, ':');
 if (q != ((void*)0) && (p == ((void*)0) || q > p))
     p = q;
 if (p != ((void*)0))
 {
     if (getcwd(olddir, BUFSIZE) == ((void*)0))
     {
  p = ((void*)0);
  retval = ((void*)0);
     }
     else
     {
  if (p == fname)
      q = p + 1;
  else if (q + 1 == p)
      q = p + 1;
  else
      q = p;

  c = *q;
  *q = NUL;
  if (mch_chdir(fname))
      retval = ((void*)0);
  else
  {
      fname = q;
      if (c == '\\')
   fname++;
  }
  *q = c;
     }
 }
 if (getcwd(buf, len) == ((void*)0))
 {
     retval = ((void*)0);
     *buf = NUL;
 }



 if (strlen(buf) + strlen(fname) >= len - 1)
 {
     printf("ERROR: File name too long!\n");
     myexit(1);
 }
 add_pathsep(buf);
 strcat(buf, fname);
 if (p)
     mch_chdir(olddir);
    }



    while ((p = strchr(buf, '/')) != ((void*)0))
 *p = '\\';

    return retval;

}
