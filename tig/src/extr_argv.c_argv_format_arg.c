
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_env {int dummy; } ;


 scalar_t__ argv_format (struct argv_env*,char const***,char const**,int,int) ;
 int free (char const**) ;

char *
argv_format_arg(struct argv_env *argv_env, const char *src_arg)
{
 const char *src_argv[] = { src_arg, ((void*)0) };
 const char **dst_argv = ((void*)0);
 char *dst_arg = ((void*)0);

 if (argv_format(argv_env, &dst_argv, src_argv, 0, 1))
  dst_arg = (char *) dst_argv[0];

 free(dst_argv);
 return dst_arg;
}
