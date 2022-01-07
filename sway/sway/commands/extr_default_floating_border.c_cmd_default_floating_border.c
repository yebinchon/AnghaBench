
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int floating_border_thickness; int floating_border; } ;


 int B_NONE ;
 int B_NORMAL ;
 int B_PIXEL ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_AT_LEAST ;
 int atoi (char*) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ strcmp (char*,char*) ;

struct cmd_results *cmd_default_floating_border(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "default_floating_border",
     EXPECTED_AT_LEAST, 1))) {
  return error;
 }

 if (strcmp(argv[0], "none") == 0) {
  config->floating_border = B_NONE;
 } else if (strcmp(argv[0], "normal") == 0) {
  config->floating_border = B_NORMAL;
 } else if (strcmp(argv[0], "pixel") == 0) {
  config->floating_border = B_PIXEL;
 } else {
  return cmd_results_new(CMD_INVALID,
    "Expected 'default_floating_border <none|normal|pixel>' "
    "or 'default_floating_border <normal|pixel> <px>'");
 }
 if (argc == 2) {
  config->floating_border_thickness = atoi(argv[1]);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
