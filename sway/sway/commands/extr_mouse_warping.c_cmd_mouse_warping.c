
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_results {int dummy; } ;
struct TYPE_2__ {int mouse_warping; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int WARP_CONTAINER ;
 int WARP_NO ;
 int WARP_OUTPUT ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_1__* config ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *cmd_mouse_warping(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "mouse_warping", EXPECTED_EQUAL_TO, 1))) {
  return error;
 } else if (strcasecmp(argv[0], "container") == 0) {
  config->mouse_warping = WARP_CONTAINER;
 } else if (strcasecmp(argv[0], "output") == 0) {
  config->mouse_warping = WARP_OUTPUT;
 } else if (strcasecmp(argv[0], "none") == 0) {
  config->mouse_warping = WARP_NO;
 } else {
  return cmd_results_new(CMD_FAILURE,
    "Expected 'mouse_warping output|container|none'");
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
