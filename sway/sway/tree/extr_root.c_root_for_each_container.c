
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_output {int dummy; } ;
typedef struct sway_container sway_container ;
struct TYPE_10__ {TYPE_4__* noop_output; TYPE_2__* scratchpad; TYPE_1__* outputs; } ;
struct TYPE_9__ {TYPE_3__* workspaces; } ;
struct TYPE_8__ {int length; struct sway_workspace** items; } ;
struct TYPE_7__ {int length; struct sway_container** items; } ;
struct TYPE_6__ {int length; struct sway_output** items; } ;


 int container_for_each_child (struct sway_container*,void (*) (struct sway_container*,void*),void*) ;
 scalar_t__ container_is_scratchpad_hidden (struct sway_container*) ;
 int output_for_each_container (struct sway_output*,void (*) (struct sway_container*,void*),void*) ;
 TYPE_5__* root ;
 int workspace_for_each_container (struct sway_workspace*,void (*) (struct sway_container*,void*),void*) ;

void root_for_each_container(void (*f)(struct sway_container *con, void *data),
  void *data) {
 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  output_for_each_container(output, f, data);
 }


 for (int i = 0; i < root->scratchpad->length; ++i) {
  struct sway_container *container = root->scratchpad->items[i];
  if (container_is_scratchpad_hidden(container)) {
   f(container, data);
   container_for_each_child(container, f, data);
  }
 }


 for (int i = 0; i < root->noop_output->workspaces->length; ++i) {
  struct sway_workspace *ws = root->noop_output->workspaces->items[i];
  workspace_for_each_container(ws, f, data);
 }
}
