
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** xcalloc (int,int) ;
 char* xstrdup (char*) ;

char **
cmd_copy_argv(int argc, char **argv)
{
 char **new_argv;
 int i;

 if (argc == 0)
  return (((void*)0));
 new_argv = xcalloc(argc + 1, sizeof *new_argv);
 for (i = 0; i < argc; i++) {
  if (argv[i] != ((void*)0))
   new_argv[i] = xstrdup(argv[i]);
 }
 return (new_argv);
}
