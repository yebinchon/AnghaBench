
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_view {int pid; } ;
struct sway_seat {scalar_t__ prev_workspace_name; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; TYPE_1__* sway_container; struct sway_workspace* sway_workspace; } ;
struct criteria {int type; scalar_t__ target; } ;
struct TYPE_7__ {int length; struct criteria** items; } ;
typedef TYPE_2__ list_t ;
struct TYPE_8__ {int node; } ;
struct TYPE_6__ {struct sway_workspace* workspace; } ;


 int CT_ASSIGN_OUTPUT ;
 int CT_ASSIGN_WORKSPACE ;
 int CT_ASSIGN_WORKSPACE_NUMBER ;
 scalar_t__ N_CONTAINER ;
 scalar_t__ N_WORKSPACE ;
 TYPE_2__* criteria_for_view (struct sway_view*,int) ;
 struct sway_seat* input_manager_current_seat () ;
 int list_free (TYPE_2__*) ;
 struct sway_output* output_by_name_or_id (scalar_t__) ;
 struct sway_workspace* output_get_active_workspace (struct sway_output*) ;
 TYPE_3__* root ;
 struct sway_workspace* root_workspace_for_pid (int ) ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,int *) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;
 int sway_assert (int,char*) ;
 struct sway_workspace* workspace_by_name (scalar_t__) ;
 struct sway_workspace* workspace_by_number (scalar_t__) ;
 struct sway_workspace* workspace_create (int *,scalar_t__) ;

__attribute__((used)) static struct sway_workspace *select_workspace(struct sway_view *view) {
 struct sway_seat *seat = input_manager_current_seat();


 list_t *criterias = criteria_for_view(view,
   CT_ASSIGN_WORKSPACE | CT_ASSIGN_WORKSPACE_NUMBER | CT_ASSIGN_OUTPUT);
 struct sway_workspace *ws = ((void*)0);
 for (int i = 0; i < criterias->length; ++i) {
  struct criteria *criteria = criterias->items[i];
  if (criteria->type == CT_ASSIGN_OUTPUT) {
   struct sway_output *output = output_by_name_or_id(criteria->target);
   if (output) {
    ws = output_get_active_workspace(output);
    break;
   }
  } else {

   ws = criteria->type == CT_ASSIGN_WORKSPACE_NUMBER ?
    workspace_by_number(criteria->target) :
    workspace_by_name(criteria->target);

   if (!ws) {
    if (strcasecmp(criteria->target, "back_and_forth") == 0) {
     if (seat->prev_workspace_name) {
      ws = workspace_create(((void*)0), seat->prev_workspace_name);
     }
    } else {
     ws = workspace_create(((void*)0), criteria->target);
    }
   }
   break;
  }
 }
 list_free(criterias);
 if (ws) {
  return ws;
 }


 ws = root_workspace_for_pid(view->pid);
 if (ws) {
  return ws;
 }


 struct sway_node *node = seat_get_focus_inactive(seat, &root->node);
 if (node && node->type == N_WORKSPACE) {
  return node->sway_workspace;
 } else if (node && node->type == N_CONTAINER) {
  return node->sway_container->workspace;
 }



 sway_assert(0, "Expected to find a workspace");
 return ((void*)0);
}
