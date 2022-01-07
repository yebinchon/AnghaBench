
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_output {int dummy; } ;
struct sway_container {scalar_t__ view; } ;
struct parent_data {int layout; TYPE_1__* children; } ;
typedef int pixman_region32_t ;
struct TYPE_4__ {scalar_t__ hide_lone_tab; } ;
struct TYPE_3__ {int length; struct sway_container** items; } ;







 TYPE_2__* config ;
 int render_containers_linear (struct sway_output*,int *,struct parent_data*) ;
 int render_containers_stacked (struct sway_output*,int *,struct parent_data*) ;
 int render_containers_tabbed (struct sway_output*,int *,struct parent_data*) ;

__attribute__((used)) static void render_containers(struct sway_output *output,
  pixman_region32_t *damage, struct parent_data *parent) {
 if (config->hide_lone_tab && parent->children->length == 1) {
  struct sway_container *child = parent->children->items[0];
  if (child->view) {
   render_containers_linear(output,damage, parent);
   return;
  }
 }

 switch (parent->layout) {
 case 131:
 case 132:
 case 128:
  render_containers_linear(output, damage, parent);
  break;
 case 130:
  render_containers_stacked(output, damage, parent);
  break;
 case 129:
  render_containers_tabbed(output, damage, parent);
  break;
 }
}
