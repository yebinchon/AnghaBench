
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_box {size_t y; size_t height; int member_3; int member_2; int member_1; int member_0; } ;
struct sway_seat {int dummy; } ;
struct sway_node {int type; int sway_workspace; int sway_container; int sway_output; scalar_t__ id; } ;
struct focus_inactive_data {int * object; struct sway_node* node; } ;
typedef int json_object ;
struct TYPE_2__ {size_t length; } ;


 scalar_t__ L_STACKED ;




 TYPE_1__* container_get_siblings (int ) ;
 scalar_t__ container_parent_layout (int ) ;
 int focus_inactive_children_iterator ;
 int get_deco_rect (int ,struct wlr_box*) ;
 struct sway_seat* input_manager_get_default_seat () ;
 int * ipc_json_create_node (int,char*,int,int *,struct wlr_box*) ;
 int ipc_json_describe_container (int ,int *) ;
 int ipc_json_describe_output (int ,int *) ;
 int ipc_json_describe_root (int ,int *) ;
 int ipc_json_describe_workspace (int ,int *) ;
 int * json_object_new_array () ;
 int node_get_box (struct sway_node*,struct wlr_box*) ;
 char* node_get_name (struct sway_node*) ;
 int root ;
 int seat_for_each_node (struct sway_seat*,int ,struct focus_inactive_data*) ;
 struct sway_node* seat_get_focus (struct sway_seat*) ;

json_object *ipc_json_describe_node(struct sway_node *node) {
 struct sway_seat *seat = input_manager_get_default_seat();
 bool focused = seat_get_focus(seat) == node;
 char *name = node_get_name(node);

 struct wlr_box box;
 node_get_box(node, &box);
 if (node->type == 131) {
  struct wlr_box deco_rect = {0, 0, 0, 0};
  get_deco_rect(node->sway_container, &deco_rect);
  size_t count = 1;
  if (container_parent_layout(node->sway_container) == L_STACKED) {
   count = container_get_siblings(node->sway_container)->length;
  }
  box.y += deco_rect.height * count;
  box.height -= deco_rect.height * count;
 }

 json_object *focus = json_object_new_array();
 struct focus_inactive_data data = {
  .node = node,
  .object = focus,
 };
 seat_for_each_node(seat, focus_inactive_children_iterator, &data);

 json_object *object = ipc_json_create_node(
    (int)node->id, name, focused, focus, &box);

 switch (node->type) {
 case 129:
  ipc_json_describe_root(root, object);
  break;
 case 130:
  ipc_json_describe_output(node->sway_output, object);
  break;
 case 131:
  ipc_json_describe_container(node->sway_container, object);
  break;
 case 128:
  ipc_json_describe_workspace(node->sway_workspace, object);
  break;
 }

 return object;
}
