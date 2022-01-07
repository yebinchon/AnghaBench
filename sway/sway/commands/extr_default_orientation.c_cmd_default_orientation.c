
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int default_orientation; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int L_HORIZ ;
 int L_VERT ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *cmd_default_orientation(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "default_orientation", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 if (strcasecmp(argv[0], "horizontal") == 0) {
  config->default_orientation = L_HORIZ;
 } else if (strcasecmp(argv[0], "vertical") == 0) {
  config->default_orientation = L_VERT;
 } else if (strcasecmp(argv[0], "auto") == 0) {

 } else {
  return cmd_results_new(CMD_INVALID,
    "Expected 'orientation <horizontal|vertical|auto>'");
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
