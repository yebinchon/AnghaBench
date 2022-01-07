
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct cmd_results {int dummy; } ;
struct TYPE_2__ {int floating_mod_inverse; scalar_t__ floating_mod; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ get_modifier_mask_by_name (char*) ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *cmd_floating_modifier(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "floating_modifier", EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 uint32_t mod = get_modifier_mask_by_name(argv[0]);
 if (!mod) {
  return cmd_results_new(CMD_INVALID, "Invalid modifier");
 }

 if (argc == 1 || strcasecmp(argv[1], "normal") == 0) {
  config->floating_mod_inverse = 0;
 } else if (strcasecmp(argv[1], "inverse") == 0) {
  config->floating_mod_inverse = 1;
 } else {
  return cmd_results_new(CMD_INVALID,
    "Usage: floating_modifier <mod> [inverse|normal]");
 }

 config->floating_mod = mod;

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
