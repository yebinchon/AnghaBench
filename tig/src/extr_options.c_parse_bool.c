
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int SUCCESS ;
 int error (char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum status_code
parse_bool(bool *opt, const char *arg)
{
 *opt = (!strcmp(arg, "1") || !strcmp(arg, "true") || !strcmp(arg, "yes"))
  ? 1 : 0;
 if (*opt || !strcmp(arg, "0") || !strcmp(arg, "false") || !strcmp(arg, "no"))
  return SUCCESS;
 return error("Non-boolean value treated as false: %s", arg);
}
