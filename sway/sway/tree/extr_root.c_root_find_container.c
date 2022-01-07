
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
struct sway_container {int dummy; } ;
struct TYPE_10__ {TYPE_4__* noop_output; TYPE_2__* scratchpad; TYPE_1__* outputs; } ;
struct TYPE_9__ {TYPE_3__* workspaces; } ;
struct TYPE_8__ {int length; struct sway_workspace** items; } ;
struct TYPE_7__ {int length; struct sway_container** items; } ;
struct TYPE_6__ {int length; struct sway_output** items; } ;


 struct sway_container* container_find_child (struct sway_container*,int (*) (struct sway_container*,void*),void*) ;
 scalar_t__ container_is_scratchpad_hidden (struct sway_container*) ;
 struct sway_container* output_find_container (struct sway_output*,int (*) (struct sway_container*,void*),void*) ;
 TYPE_5__* root ;
 struct sway_container* workspace_find_container (struct sway_workspace*,int (*) (struct sway_container*,void*),void*) ;

struct sway_container *root_find_container(
  bool (*test)(struct sway_container *con, void *data), void *data) {
 struct sway_container *result = ((void*)0);
 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  if ((result = output_find_container(output, test, data))) {
   return result;
  }
 }


 for (int i = 0; i < root->scratchpad->length; ++i) {
  struct sway_container *container = root->scratchpad->items[i];
  if (container_is_scratchpad_hidden(container)) {
   if (test(container, data)) {
    return container;
   }
   if ((result = container_find_child(container, test, data))) {
    return result;
   }
  }
 }


 for (int i = 0; i < root->noop_output->workspaces->length; ++i) {
  struct sway_workspace *ws = root->noop_output->workspaces->items[i];
  if ((result = workspace_find_container(ws, test, data))) {
   return result;
  }
 }

 return ((void*)0);
}
