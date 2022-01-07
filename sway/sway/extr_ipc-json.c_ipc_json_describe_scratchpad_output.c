
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wlr_box {int dummy; } ;
struct TYPE_7__ {int id; } ;
struct sway_container {TYPE_4__ node; } ;
typedef int json_object ;
struct TYPE_6__ {TYPE_1__* scratchpad; } ;
struct TYPE_5__ {int length; struct sway_container** items; } ;


 scalar_t__ container_is_scratchpad_hidden (struct sway_container*) ;
 int i3_output_id ;
 int i3_scratch_id ;
 int * ipc_json_create_node (int ,char*,int,int *,struct wlr_box*) ;
 int * ipc_json_describe_node_recursive (TYPE_4__*) ;
 int json_object_array_add (int *,int *) ;
 int * json_object_new_array () ;
 int * json_object_new_int (int ) ;
 int * json_object_new_string (char*) ;
 int json_object_object_add (int *,char*,int *) ;
 TYPE_2__* root ;
 int root_get_box (TYPE_2__*,struct wlr_box*) ;

__attribute__((used)) static json_object *ipc_json_describe_scratchpad_output(void) {
 struct wlr_box box;
 root_get_box(root, &box);


 json_object *workspace_focus = json_object_new_array();
 for (int i = root->scratchpad->length - 1; i >= 0; --i) {
  struct sway_container *container = root->scratchpad->items[i];
  json_object_array_add(workspace_focus,
    json_object_new_int(container->node.id));
 }

 json_object *workspace = ipc_json_create_node(i3_scratch_id,
    "__i3_scratch", 0, workspace_focus, &box);
 json_object_object_add(workspace, "type",
   json_object_new_string("workspace"));


 json_object *floating_array = json_object_new_array();
 for (int i = 0; i < root->scratchpad->length; ++i) {
  struct sway_container *container = root->scratchpad->items[i];
  if (container_is_scratchpad_hidden(container)) {
   json_object_array_add(floating_array,
    ipc_json_describe_node_recursive(&container->node));
  }
 }
 json_object_object_add(workspace, "floating_nodes", floating_array);


 json_object *output_focus = json_object_new_array();
 json_object_array_add(output_focus, json_object_new_int(i3_scratch_id));

 json_object *output = ipc_json_create_node(i3_output_id,
     "__i3", 0, output_focus, &box);
 json_object_object_add(output, "type",
   json_object_new_string("output"));
 json_object_object_add(output, "layout",
   json_object_new_string("output"));

 json_object *nodes = json_object_new_array();
 json_object_array_add(nodes, workspace);
 json_object_object_add(output, "nodes", nodes);

 return output;
}
