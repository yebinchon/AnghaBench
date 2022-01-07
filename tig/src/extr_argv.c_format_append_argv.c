
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_context {int dummy; } ;


 int format_append_arg (struct format_context*,char const***,char const*) ;

__attribute__((used)) static bool
format_append_argv(struct format_context *format, const char ***dst_argv, const char *src_argv[])
{
 int argc;

 if (!src_argv)
  return 1;

 for (argc = 0; src_argv[argc]; argc++)
  if (!format_append_arg(format, dst_argv, src_argv[argc]))
   return 0;

 return src_argv[argc] == ((void*)0);
}
