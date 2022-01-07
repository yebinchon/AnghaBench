
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* args_escape (char const*) ;
 int args_print_add (char**,size_t*,char*,...) ;
 int free (char*) ;

__attribute__((used)) static void
args_print_add_argument(char **buf, size_t *len, const char *argument)
{
 char *escaped;

 if (**buf != '\0')
  args_print_add(buf, len, " ");

 escaped = args_escape(argument);
 args_print_add(buf, len, "%s", escaped);
 free(escaped);
}
