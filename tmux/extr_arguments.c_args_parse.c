
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct args {int argc; int argv; } ;


 int args_free (struct args*) ;
 int args_set (struct args*,int,int ) ;
 int cmd_copy_argv (int,char**) ;
 int getopt (int,char**,char const*) ;
 int optarg ;
 int optind ;
 int optreset ;
 int * strchr (char const*,int) ;
 struct args* xcalloc (int,int) ;

struct args *
args_parse(const char *template, int argc, char **argv)
{
 struct args *args;
 int opt;

 args = xcalloc(1, sizeof *args);

 optreset = 1;
 optind = 1;

 while ((opt = getopt(argc, argv, template)) != -1) {
  if (opt < 0)
   continue;
  if (opt == '?' || strchr(template, opt) == ((void*)0)) {
   args_free(args);
   return (((void*)0));
  }
  args_set(args, opt, optarg);
 }
 argc -= optind;
 argv += optind;

 args->argc = argc;
 args->argv = cmd_copy_argv(argc, argv);

 return (args);
}
