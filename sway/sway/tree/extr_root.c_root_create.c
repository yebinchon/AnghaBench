
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int notify; } ;
struct TYPE_5__ {int new_node; } ;
struct sway_root {TYPE_4__ output_layout_change; TYPE_3__* output_layout; void* scratchpad; void* outputs; TYPE_1__ events; int drag_icons; int xwayland_unmanaged; int all_outputs; int node; } ;
struct TYPE_6__ {int change; } ;
struct TYPE_7__ {TYPE_2__ events; } ;


 int N_ROOT ;
 int SWAY_ERROR ;
 struct sway_root* calloc (int,int) ;
 void* create_list () ;
 int node_init (int *,int ,struct sway_root*) ;
 int output_layout_handle_change ;
 int sway_log (int ,char*) ;
 int wl_list_init (int *) ;
 int wl_signal_add (int *,TYPE_4__*) ;
 int wl_signal_init (int *) ;
 TYPE_3__* wlr_output_layout_create () ;

struct sway_root *root_create(void) {
 struct sway_root *root = calloc(1, sizeof(struct sway_root));
 if (!root) {
  sway_log(SWAY_ERROR, "Unable to allocate sway_root");
  return ((void*)0);
 }
 node_init(&root->node, N_ROOT, root);
 root->output_layout = wlr_output_layout_create();
 wl_list_init(&root->all_outputs);



 wl_list_init(&root->drag_icons);
 wl_signal_init(&root->events.new_node);
 root->outputs = create_list();
 root->scratchpad = create_list();

 root->output_layout_change.notify = output_layout_handle_change;
 wl_signal_add(&root->output_layout->events.change,
  &root->output_layout_change);
 return root;
}
