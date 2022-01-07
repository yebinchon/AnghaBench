
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace {int dummy; } ;
struct sway_output {TYPE_1__* workspaces; } ;
struct TYPE_2__ {int length; struct sway_workspace** items; } ;


 int workspace_for_each_container (struct sway_workspace*,void (*) (struct sway_container*,void*),void*) ;

void output_for_each_container(struct sway_output *output,
  void (*f)(struct sway_container *con, void *data), void *data) {
 for (int i = 0; i < output->workspaces->length; ++i) {
  struct sway_workspace *workspace = output->workspaces->items[i];
  workspace_for_each_container(workspace, f, data);
 }
}
