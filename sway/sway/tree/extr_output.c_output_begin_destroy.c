
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int destroying; } ;
struct sway_output {TYPE_1__* wlr_output; int link; TYPE_2__ node; int enabled; } ;
struct TYPE_3__ {int * data; int name; } ;


 int SWAY_DEBUG ;
 int node_set_dirty (TYPE_2__*) ;
 int sway_assert (int,char*) ;
 int sway_log (int ,char*,int ) ;
 int wl_list_remove (int *) ;

void output_begin_destroy(struct sway_output *output) {
 if (!sway_assert(!output->enabled, "Expected a disabled output")) {
  return;
 }
 sway_log(SWAY_DEBUG, "Destroying output '%s'", output->wlr_output->name);

 output->node.destroying = 1;
 node_set_dirty(&output->node);

 wl_list_remove(&output->link);
 output->wlr_output->data = ((void*)0);
 output->wlr_output = ((void*)0);
}
