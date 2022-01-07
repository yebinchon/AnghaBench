
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char**) ;
 char** xreallocarray (int *,int,int) ;
 char* xstrdup (char*) ;

void
cmd_prepend_argv(int *argc, char ***argv, char *arg)
{
 char **new_argv;
 int i;

 new_argv = xreallocarray(((void*)0), (*argc) + 1, sizeof *new_argv);
 new_argv[0] = xstrdup(arg);
 for (i = 0; i < *argc; i++)
  new_argv[1 + i] = (*argv)[i];

 free(*argv);
 *argv = new_argv;
 (*argc)++;
}
