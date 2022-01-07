
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_workspace {struct sway_output* output; } ;
struct sway_seat {int dummy; } ;
struct sway_output {TYPE_2__* workspaces; TYPE_1__* wlr_output; } ;
struct TYPE_4__ {int length; struct sway_workspace** items; } ;
struct TYPE_3__ {int name; } ;


 int SWAY_DEBUG ;
 int free (char*) ;
 struct sway_seat* input_manager_current_seat () ;
 int list_find (TYPE_2__*,struct sway_workspace*) ;
 struct sway_workspace* seat_get_focused_workspace (struct sway_seat*) ;
 int sway_log (int ,char*) ;
 int workspace_create (struct sway_output*,char*) ;
 int workspace_is_empty (struct sway_workspace*) ;
 char* workspace_next_name (int ) ;
 size_t wrap (int,int) ;

__attribute__((used)) static struct sway_workspace *workspace_output_prev_next_impl(
  struct sway_output *output, int dir, bool create) {
 struct sway_seat *seat = input_manager_current_seat();
 struct sway_workspace *workspace = seat_get_focused_workspace(seat);
 if (!workspace) {
  sway_log(SWAY_DEBUG,
    "No focused workspace to base prev/next on output off of");
  return ((void*)0);
 }

 int index = list_find(output->workspaces, workspace);
 if (!workspace_is_empty(workspace) && create &&
   (index + dir < 0 || index + dir == output->workspaces->length)) {
  struct sway_output *output = workspace->output;
  char *next = workspace_next_name(output->wlr_output->name);
  workspace_create(output, next);
  free(next);
 }
 size_t new_index = wrap(index + dir, output->workspaces->length);
 return output->workspaces->items[new_index];
}
