
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZE ;
 int FALSE ;
 int TRUE ;
 int VIM_VERSION_NODOT ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int isalpha (char) ;
 int isdigit (char) ;
 int strlen (int ) ;
 scalar_t__ strnicmp (char*,int ,int) ;

__attribute__((used)) static int
batfile_thisversion(char *path)
{
    FILE *fd;
    char line[BUFSIZE];
    char *p;
    int ver_len = strlen(VIM_VERSION_NODOT);
    int found = FALSE;

    fd = fopen(path, "r");
    if (fd != ((void*)0))
    {
 while (fgets(line, BUFSIZE, fd) != ((void*)0))
 {
     for (p = line; *p != 0; ++p)

  if (strnicmp(p, VIM_VERSION_NODOT, ver_len) == 0
   && !isdigit(p[ver_len])
   && !isalpha(p[ver_len]))
  {
      found = TRUE;
      break;
  }
     if (found)
  break;
 }
 fclose(fd);
    }
    return found;
}
