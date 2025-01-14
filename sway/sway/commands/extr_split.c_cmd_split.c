
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_container {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {struct sway_container* container; } ;
struct TYPE_8__ {TYPE_2__ handler_context; } ;
struct TYPE_7__ {TYPE_1__* outputs; } ;
struct TYPE_5__ {int length; } ;


 int CMD_FAILURE ;
 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 scalar_t__ L_HORIZ ;
 scalar_t__ L_VERT ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_4__* config ;
 scalar_t__ container_parent_layout (struct sway_container*) ;
 struct cmd_results* do_split (scalar_t__) ;
 TYPE_3__* root ;
 scalar_t__ strcasecmp (char*,char*) ;

struct cmd_results *cmd_split(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "split", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 if (!root->outputs->length) {
  return cmd_results_new(CMD_INVALID,
    "Can't run this command while there's no outputs connected.");
 }
 if (strcasecmp(argv[0], "v") == 0 || strcasecmp(argv[0], "vertical") == 0) {
  return do_split(L_VERT);
 } else if (strcasecmp(argv[0], "h") == 0 ||
   strcasecmp(argv[0], "horizontal") == 0) {
  return do_split(L_HORIZ);
 } else if (strcasecmp(argv[0], "t") == 0 ||
   strcasecmp(argv[0], "toggle") == 0) {
  struct sway_container *focused = config->handler_context.container;

  if (focused && container_parent_layout(focused) == L_VERT) {
   return do_split(L_HORIZ);
  } else {
   return do_split(L_VERT);
  }
 } else {
  return cmd_results_new(CMD_FAILURE,
   "Invalid split command (expected either horizontal or vertical).");
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
