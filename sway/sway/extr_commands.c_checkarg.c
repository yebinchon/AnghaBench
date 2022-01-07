
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_results {int dummy; } ;
typedef enum expected_args { ____Placeholder_expected_args } expected_args ;


 int CMD_INVALID ;



 struct cmd_results* cmd_results_new (int ,char*,char const*,char const*,int,char*,int) ;

struct cmd_results *checkarg(int argc, const char *name, enum expected_args type, int val) {
 const char *error_name = ((void*)0);
 switch (type) {
 case 130:
  if (argc < val) {
   error_name = "at least ";
  }
  break;
 case 129:
  if (argc > val) {
   error_name = "at most ";
  }
  break;
 case 128:
  if (argc != val) {
   error_name = "";
  }
 }
 return error_name ?
  cmd_results_new(CMD_INVALID, "Invalid %s command "
    "(expected %s%d argument%s, got %d)",
    name, error_name, val, val != 1 ? "s" : "", argc)
  : ((void*)0);
}
