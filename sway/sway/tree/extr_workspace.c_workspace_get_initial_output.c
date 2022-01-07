
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct workspace_config {TYPE_1__* outputs; } ;
struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; TYPE_4__* sway_container; TYPE_2__* sway_workspace; } ;
struct TYPE_12__ {struct sway_output* noop_output; TYPE_5__* outputs; int node; } ;
struct TYPE_11__ {struct sway_output** items; scalar_t__ length; } ;
struct TYPE_10__ {TYPE_3__* workspace; } ;
struct TYPE_9__ {struct sway_output* output; } ;
struct TYPE_8__ {struct sway_output* output; } ;
struct TYPE_7__ {int length; int * items; } ;


 scalar_t__ N_CONTAINER ;
 scalar_t__ N_WORKSPACE ;
 struct sway_seat* input_manager_current_seat () ;
 struct sway_output* output_by_name_or_id (int ) ;
 TYPE_6__* root ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 struct workspace_config* workspace_find_config (char const*) ;

struct sway_output *workspace_get_initial_output(const char *name) {

 struct workspace_config *wsc = workspace_find_config(name);
 if (wsc) {
  for (int i = 0; i < wsc->outputs->length; i++) {
   struct sway_output *output =
    output_by_name_or_id(wsc->outputs->items[i]);
   if (output) {
    return output;
   }
  }
 }

 struct sway_seat *seat = input_manager_current_seat();
 struct sway_node *focus = seat_get_focus_inactive(seat, &root->node);
 if (focus && focus->type == N_WORKSPACE) {
  return focus->sway_workspace->output;
 } else if (focus && focus->type == N_CONTAINER) {
  return focus->sway_container->workspace->output;
 }

 return root->outputs->length ? root->outputs->items[0] : root->noop_output;
}
