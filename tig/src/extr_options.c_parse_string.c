
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int ERROR_UNMATCHED_QUOTATION ;
 int SUCCESS ;
 int string_ncopy_do (char*,size_t,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static enum status_code
parse_string(char *opt, const char *arg, size_t optsize)
{
 int arglen = strlen(arg);

 switch (arg[0]) {
 case '\"':
 case '\'':
  if (arglen == 1 || arg[arglen - 1] != arg[0])
   return ERROR_UNMATCHED_QUOTATION;
  arg += 1; arglen -= 2;

 default:
  string_ncopy_do(opt, optsize, arg, arglen);
  return SUCCESS;
 }
}
