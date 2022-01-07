
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {int output; } ;
struct sway_container {struct sway_workspace* workspace; scalar_t__ is_sticky; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_FAILURE ;
 int CMD_SUCCESS ;
 int EXPECTED_EQUAL_TO ;
 int arrange_workspace (struct sway_workspace*) ;
 struct cmd_results* checkarg (int,char*,int ,int) ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 int container_detach (struct sway_container*) ;
 int container_handle_fullscreen_reparent (struct sway_container*) ;
 scalar_t__ container_is_floating_or_child (struct sway_container*) ;
 int container_is_scratchpad_hidden (struct sway_container*) ;
 struct sway_workspace* output_get_active_workspace (int ) ;
 scalar_t__ parse_boolean (char*,scalar_t__) ;
 int sway_assert (struct sway_workspace*,char*) ;
 int workspace_add_floating (struct sway_workspace*,struct sway_container*) ;
 int workspace_consider_destroy (struct sway_workspace*) ;

struct cmd_results *cmd_sticky(int argc, char **argv) {
 struct cmd_results *error = ((void*)0);
 if ((error = checkarg(argc, "sticky", EXPECTED_EQUAL_TO, 1))) {
  return error;
 }
 struct sway_container *container = config->handler_context.container;

 if (container == ((void*)0)) {
  return cmd_results_new(CMD_FAILURE, "No current container");
 };

 container->is_sticky = parse_boolean(argv[0], container->is_sticky);

 if (container->is_sticky && container_is_floating_or_child(container) &&
   !container_is_scratchpad_hidden(container)) {

  struct sway_workspace *active_workspace =
   output_get_active_workspace(container->workspace->output);
  if (!sway_assert(active_workspace,
     "Expected output to have a workspace")) {
   return cmd_results_new(CMD_FAILURE,
     "Expected output to have a workspace");
  }
  if (container->workspace != active_workspace) {
   struct sway_workspace *old_workspace = container->workspace;
   container_detach(container);
   workspace_add_floating(active_workspace, container);
   container_handle_fullscreen_reparent(container);
   arrange_workspace(active_workspace);
   workspace_consider_destroy(old_workspace);
  }
 }

 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}
