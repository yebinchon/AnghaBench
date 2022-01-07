
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {scalar_t__ reloading; int active; } ;


 int CMD_INVALID ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*,int ,...) ;
 TYPE_1__* config ;
 int expected_defaults ;
 int expected_runtime ;
 struct cmd_results* gaps_set_defaults (int,char**) ;
 struct cmd_results* gaps_set_runtime (int,char**) ;

struct cmd_results *cmd_gaps(int argc, char **argv) {
 struct cmd_results *error = checkarg(argc, "gaps", EXPECTED_AT_LEAST, 2);
 if (error) {
  return error;
 }

 bool config_loading = !config->active || config->reloading;

 if (argc == 2) {
  return gaps_set_defaults(argc, argv);
 }
 if (argc == 4 && !config_loading) {
  return gaps_set_runtime(argc, argv);
 }
 if (config_loading) {
  return cmd_results_new(CMD_INVALID, "Expected %s", expected_defaults);
 }
 return cmd_results_new(CMD_INVALID, "Expected %s or %s",
   expected_runtime, expected_defaults);
}
