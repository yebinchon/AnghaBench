
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_3__ {int swaynag_config_errors; } ;


 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,int *) ;
 TYPE_1__* config ;
 int load_include_configs (char*,TYPE_1__*,int *) ;

struct cmd_results *cmd_include(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "include", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }


 load_include_configs(argv[0], config, &config->swaynag_config_errors);

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
