
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int ERROR_OUT_OF_MEMORY ;
 int SUCCESS ;
 int argv_copy (char const***,char const**) ;

__attribute__((used)) static enum status_code
parse_args(const char ***args, const char *argv[])
{
 if (!argv_copy(args, argv))
  return ERROR_OUT_OF_MEMORY;
 return SUCCESS;
}
