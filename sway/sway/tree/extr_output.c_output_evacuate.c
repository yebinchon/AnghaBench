
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sway_workspace {TYPE_3__* floating; } ;
struct sway_output {TYPE_2__* workspaces; } ;
struct TYPE_8__ {struct sway_output* noop_output; TYPE_1__* outputs; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_6__ {struct sway_workspace** items; scalar_t__ length; } ;
struct TYPE_5__ {int length; struct sway_output** items; } ;


 int evacuate_sticky (struct sway_workspace*,struct sway_output*) ;
 int ipc_event_workspace (int *,struct sway_workspace*,char*) ;
 int output_add_workspace (struct sway_output*,struct sway_workspace*) ;
 struct sway_workspace* output_get_active_workspace (struct sway_output*) ;
 int output_sort_workspaces (struct sway_output*) ;
 TYPE_4__* root ;
 int workspace_begin_destroy (struct sway_workspace*) ;
 int workspace_consider_destroy (struct sway_workspace*) ;
 int workspace_detach (struct sway_workspace*) ;
 scalar_t__ workspace_is_empty (struct sway_workspace*) ;
 int workspace_output_add_priority (struct sway_workspace*,struct sway_output*) ;
 struct sway_output* workspace_output_get_highest_available (struct sway_workspace*,struct sway_output*) ;

__attribute__((used)) static void output_evacuate(struct sway_output *output) {
 if (!output->workspaces->length) {
  return;
 }
 struct sway_output *fallback_output = ((void*)0);
 if (root->outputs->length > 1) {
  fallback_output = root->outputs->items[0];
  if (fallback_output == output) {
   fallback_output = root->outputs->items[1];
  }
 }

 while (output->workspaces->length) {
  struct sway_workspace *workspace = output->workspaces->items[0];

  workspace_detach(workspace);

  struct sway_output *new_output =
   workspace_output_get_highest_available(workspace, output);
  if (!new_output) {
   new_output = fallback_output;
  }
  if (!new_output) {
   new_output = root->noop_output;
  }

  if (workspace_is_empty(workspace)) {

   if (workspace->floating->length) {
    evacuate_sticky(workspace, new_output);
   }
   workspace_begin_destroy(workspace);
   continue;
  }

  struct sway_workspace *new_output_ws =
   output_get_active_workspace(new_output);

  workspace_output_add_priority(workspace, new_output);
  output_add_workspace(new_output, workspace);
  output_sort_workspaces(new_output);
  ipc_event_workspace(((void*)0), workspace, "move");



  if (new_output_ws) {
   workspace_consider_destroy(new_output_ws);
  }
 }
}
