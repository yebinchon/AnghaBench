
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_node {size_t id; } ;
struct sway_output {struct sway_node node; } ;
struct focus_inactive_data {int * node; int * object; } ;
typedef int json_object ;
struct TYPE_2__ {int node; } ;


 int json_object_array_add (int *,int ) ;
 int json_object_array_get_idx (int *,int) ;
 int json_object_array_length (int *) ;
 scalar_t__ json_object_get_int (int ) ;
 int json_object_new_int (size_t) ;
 struct sway_output* node_get_output (struct sway_node*) ;
 int * node_get_parent (struct sway_node*) ;
 TYPE_1__* root ;

__attribute__((used)) static void focus_inactive_children_iterator(struct sway_node *node,
  void *_data) {
 struct focus_inactive_data *data = _data;
 json_object *focus = data->object;
 if (data->node == &root->node) {
  struct sway_output *output = node_get_output(node);
  if (output == ((void*)0)) {
   return;
  }
  size_t id = output->node.id;
  int len = json_object_array_length(focus);
  for (int i = 0; i < len; ++i) {
   if ((size_t) json_object_get_int(json_object_array_get_idx(focus, i)) == id) {
    return;
   }
  }
  node = &output->node;
 } else if (node_get_parent(node) != data->node) {
  return;
 }
 json_object_array_add(focus, json_object_new_int(node->id));
}
