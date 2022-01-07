
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int tiling_drag_threshold; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 int strtol (char*,char**,int) ;

struct cmd_results *cmd_tiling_drag_threshold(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "tiling_drag_threshold", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }

 char *inv;
 int value = strtol(argv[0], &inv, 10);
 if (*inv != '\0' || value < 0) {
  return cmd_results_new(CMD_INVALID, "Invalid threshold specified");
 }

 config->tiling_drag_threshold = value;

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
