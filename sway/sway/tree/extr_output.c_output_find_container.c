
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_output {TYPE_1__* workspaces; } ;
struct sway_container {int dummy; } ;
struct TYPE_2__ {int length; struct sway_workspace** items; } ;


 struct sway_container* workspace_find_container (struct sway_workspace*,int (*) (struct sway_container*,void*),void*) ;

struct sway_container *output_find_container(struct sway_output *output,
  bool (*test)(struct sway_container *con, void *data), void *data) {
 struct sway_container *result = ((void*)0);
 for (int i = 0; i < output->workspaces->length; ++i) {
  struct sway_workspace *workspace = output->workspaces->items[i];
  if ((result = workspace_find_container(workspace, test, data))) {
   return result;
  }
 }
 return ((void*)0);
}
