
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sway_surface_iterator_func_t ;
struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;
struct sway_view {TYPE_2__* container; TYPE_1__ geometry; } ;
struct sway_output {scalar_t__ ly; scalar_t__ lx; } ;
struct surface_iterator_data {void* user_data; int rotation; int height; int width; scalar_t__ oy; scalar_t__ ox; struct sway_output* output; int user_iterator; } ;
struct TYPE_4__ {int surface_height; int surface_width; scalar_t__ surface_y; scalar_t__ surface_x; } ;


 int output_for_each_surface_iterator ;
 int view_for_each_popup (struct sway_view*,int ,struct surface_iterator_data*) ;

void output_view_for_each_popup(struct sway_output *output,
  struct sway_view *view, sway_surface_iterator_func_t iterator,
  void *user_data) {
 struct surface_iterator_data data = {
  .user_iterator = iterator,
  .user_data = user_data,
  .output = output,
  .ox = view->container->surface_x - output->lx
   - view->geometry.x,
  .oy = view->container->surface_y - output->ly
   - view->geometry.y,
  .width = view->container->surface_width,
  .height = view->container->surface_height,
  .rotation = 0,
 };

 view_for_each_popup(view, output_for_each_surface_iterator, &data);
}
