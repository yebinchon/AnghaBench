
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* oldexe; } ;
typedef int FILE ;


 int BUFSIZE ;
 int FALSE ;
 char NUL ;
 int TARGET_COUNT ;
 int fclose (int *) ;
 int find_bat_exe (int ) ;
 int findoldfile (char**) ;
 int * fopen (char*,char*) ;
 char* getenv (char*) ;
 char* installdir ;
 scalar_t__ interactive ;
 int myexit (int) ;
 char* oldvimrc ;
 scalar_t__ pathcmp (char*,int,char*,int) ;
 int printf (char*,...) ;
 int runtimeidx ;
 int strcpy (char*,char*) ;
 TYPE_1__* targets ;

__attribute__((used)) static void
inspect_system(void)
{
    char *p;
    char buf[BUFSIZE];
    FILE *fd;
    int i;
    int foundone;


    printf("Inspecting system...\n");




    p = getenv("VIM");
    if (p != ((void*)0) && pathcmp(p, -1, installdir, runtimeidx - 1) != 0)
    {
 printf("------------------------------------------------------\n");
 printf("$VIM is set to \"%s\".\n", p);
 printf("This is different from where this version of Vim is:\n");
 strcpy(buf, installdir);
 *(buf + runtimeidx - 1) = NUL;
 printf("\"%s\"\n", buf);
 printf("You must adjust or remove the setting of $VIM,\n");
 if (interactive)
 {
     printf("to be able to use this install program.\n");
     myexit(1);
 }
 printf("otherwise Vim WILL NOT WORK properly!\n");
 printf("------------------------------------------------------\n");
    }




    p = getenv("VIMRUNTIME");
    if (p != ((void*)0) && pathcmp(p, -1, installdir, -1) != 0)
    {
 printf("------------------------------------------------------\n");
 printf("$VIMRUNTIME is set to \"%s\".\n", p);
 printf("This is different from where this version of Vim is:\n");
 printf("\"%s\"\n", installdir);
 printf("You must adjust or remove the setting of $VIMRUNTIME,\n");
 if (interactive)
 {
     printf("to be able to use this install program.\n");
     myexit(1);
 }
 printf("otherwise Vim WILL NOT WORK properly!\n");
 printf("------------------------------------------------------\n");
    }




    find_bat_exe(FALSE);






    foundone = 0;
    for (i = 1; i < TARGET_COUNT; ++i)
    {
 findoldfile(&(targets[i].oldexe));
 if (targets[i].oldexe != ((void*)0))
     foundone = 1;
    }

    if (foundone)
    {
 printf("Warning: Found Vim executable(s) in your $PATH:\n");
 for (i = 1; i < TARGET_COUNT; ++i)
     if (targets[i].oldexe != ((void*)0))
  printf("%s\n", targets[i].oldexe);
 printf("It will be used instead of the version you are installing.\n");
 printf("Please delete or rename it, or adjust your $PATH setting.\n");
    }




    strcpy(oldvimrc, installdir);
    strcpy(oldvimrc + runtimeidx, "_vimrc");
    if ((fd = fopen(oldvimrc, "r")) == ((void*)0))
    {
 strcpy(oldvimrc + runtimeidx, "vimrc~1");
 if ((fd = fopen(oldvimrc, "r")) == ((void*)0))
 {
     strcpy(oldvimrc + runtimeidx, ".vimrc");
     fd = fopen(oldvimrc, "r");
 }
    }
    if (fd != ((void*)0))
 fclose(fd);
    else
 *oldvimrc = NUL;
}
