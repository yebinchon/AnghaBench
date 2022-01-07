
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZEOF_ARG ;
 char* parse_arg (char**,int) ;
 char* string_trim (char*) ;

__attribute__((used)) static bool
split_argv_string(const char *argv[SIZEOF_ARG], int *argc, char *cmd, bool remove_quotes)
{
 while (*cmd && *argc < SIZEOF_ARG) {
  char *arg = parse_arg(&cmd, remove_quotes);

  if (!arg)
   break;
  argv[(*argc)++] = arg;
  cmd = string_trim(cmd);
 }

 if (*argc < SIZEOF_ARG)
  argv[*argc] = ((void*)0);
 return *argc < SIZEOF_ARG;
}
