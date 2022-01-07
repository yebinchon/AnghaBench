
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int output; int node; } ;
struct sway_seat {int dummy; } ;
typedef int json_object ;


 struct sway_seat* input_manager_get_default_seat () ;
 int * ipc_json_describe_node (int *) ;
 int json_object_array_add (int *,int *) ;
 int json_object_new_boolean (int) ;
 int json_object_object_add (int *,char*,int ) ;
 int json_object_object_del (int *,char*) ;
 struct sway_workspace* output_get_active_workspace (int ) ;
 struct sway_workspace* seat_get_focused_workspace (struct sway_seat*) ;

__attribute__((used)) static void ipc_get_workspaces_callback(struct sway_workspace *workspace,
  void *data) {
 json_object *workspace_json = ipc_json_describe_node(&workspace->node);


 struct sway_seat *seat = input_manager_get_default_seat();
 struct sway_workspace *focused_ws = seat_get_focused_workspace(seat);
 bool focused = workspace == focused_ws;
 json_object_object_del(workspace_json, "focused");
 json_object_object_add(workspace_json, "focused",
   json_object_new_boolean(focused));
 json_object_array_add((json_object *)data, workspace_json);

 focused_ws = output_get_active_workspace(workspace->output);
 bool visible = workspace == focused_ws;
 json_object_object_add(workspace_json, "visible",
   json_object_new_boolean(visible));
}
