
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sway_workspace {int layout; TYPE_2__* tiling; } ;
struct sway_container {scalar_t__ workspace; struct sway_container* parent; } ;
struct cmd_results {int dummy; } ;
struct TYPE_8__ {int seat; struct sway_workspace* workspace; struct sway_container* container; } ;
struct TYPE_10__ {TYPE_3__ handler_context; } ;
struct TYPE_9__ {TYPE_1__* outputs; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_6__ {int length; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int L_HORIZ ;
 int arrange_workspace (scalar_t__) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_5__* config ;
 int container_is_floating (struct sway_container*) ;
 scalar_t__ container_is_floating_or_child (struct sway_container*) ;
 scalar_t__ container_is_scratchpad_hidden (struct sway_container*) ;
 int container_set_floating (struct sway_container*,int) ;
 int parse_boolean (char*,int ) ;
 TYPE_4__* root ;
 int seat_set_focus_container (int ,struct sway_container*) ;
 struct sway_container* workspace_wrap_children (struct sway_workspace*) ;

struct cmd_results *cmd_floating(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "floating", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 if (!root->outputs->length) {
  return cmd_results_new(CMD_INVALID,
    "Can't run this command while there's no outputs connected.");
 }
 struct sway_container *container = config->handler_context.container;
 struct sway_workspace *workspace = config->handler_context.workspace;
 if (!container && workspace->tiling->length == 0) {
  return cmd_results_new(CMD_INVALID, "Can't float an empty workspace");
 }
 if (!container) {

  container = workspace_wrap_children(workspace);
  workspace->layout = L_HORIZ;
  seat_set_focus_container(config->handler_context.seat, container);
 }

 if (container_is_scratchpad_hidden(container)) {
  return cmd_results_new(CMD_INVALID,
    "Can't change floating on hidden scratchpad container");
 }



 if (container_is_floating_or_child(container)) {
  while (container->parent) {
   container = container->parent;
  }
 }

 bool wants_floating =
  parse_boolean(argv[0], container_is_floating(container));

 container_set_floating(container, wants_floating);


 if (container->workspace) {
  arrange_workspace(container->workspace);
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
