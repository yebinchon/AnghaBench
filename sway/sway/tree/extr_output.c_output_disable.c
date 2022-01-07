
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int destroy; } ;
struct sway_output {int enabled; int configured; int * current_mode; TYPE_2__ events; TYPE_1__* wlr_output; } ;
struct TYPE_6__ {int outputs; } ;
struct TYPE_4__ {int name; } ;


 int SWAY_DEBUG ;
 int arrange_root () ;
 int list_del (int ,int) ;
 int list_find (int ,struct sway_output*) ;
 int output_evacuate (struct sway_output*) ;
 TYPE_3__* root ;
 int root_for_each_container (int ,struct sway_output*) ;
 int sway_assert (int,char*) ;
 int sway_log (int ,char*,int ) ;
 int untrack_output ;
 int wl_signal_emit (int *,struct sway_output*) ;

void output_disable(struct sway_output *output) {
 if (!sway_assert(output->enabled, "Expected an enabled output")) {
  return;
 }
 sway_log(SWAY_DEBUG, "Disabling output '%s'", output->wlr_output->name);
 wl_signal_emit(&output->events.destroy, output);

 output_evacuate(output);

 root_for_each_container(untrack_output, output);

 int index = list_find(root->outputs, output);
 list_del(root->outputs, index);

 output->enabled = 0;
 output->configured = 0;
 output->current_mode = ((void*)0);

 arrange_root();
}
