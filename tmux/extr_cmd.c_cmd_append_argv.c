
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** xreallocarray (char**,int,int) ;
 char* xstrdup (char*) ;

void
cmd_append_argv(int *argc, char ***argv, char *arg)
{
 *argv = xreallocarray(*argv, (*argc) + 1, sizeof **argv);
 (*argv)[(*argc)++] = xstrdup(arg);
}
