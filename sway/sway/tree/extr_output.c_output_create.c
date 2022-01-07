
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_output {int subpixel; struct sway_output* data; } ;
struct TYPE_5__ {void* workspaces; } ;
struct TYPE_4__ {int destroy; } ;
struct sway_output {TYPE_2__ current; void* workspaces; int link; TYPE_1__ events; int detected_subpixel; struct wlr_output* wlr_output; int node; } ;
struct TYPE_6__ {int all_outputs; } ;


 int N_OUTPUT ;
 struct sway_output* calloc (int,int) ;
 void* create_list () ;
 int node_init (int *,int ,struct sway_output*) ;
 TYPE_3__* root ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_init (int *) ;

struct sway_output *output_create(struct wlr_output *wlr_output) {
 struct sway_output *output = calloc(1, sizeof(struct sway_output));
 node_init(&output->node, N_OUTPUT, output);
 output->wlr_output = wlr_output;
 wlr_output->data = output;
 output->detected_subpixel = wlr_output->subpixel;

 wl_signal_init(&output->events.destroy);

 wl_list_insert(&root->all_outputs, &output->link);

 output->workspaces = create_list();
 output->current.workspaces = create_list();

 return output;
}
