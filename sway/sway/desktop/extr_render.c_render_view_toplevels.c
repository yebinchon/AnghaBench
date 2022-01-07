
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {double x; double y; } ;
struct sway_view {int surface; TYPE_2__ geometry; TYPE_1__* container; } ;
struct sway_output {double lx; double ly; } ;
struct render_data {float alpha; int * damage; } ;
typedef int pixman_region32_t ;
struct TYPE_3__ {double surface_x; double surface_y; } ;


 int output_surface_for_each_surface (struct sway_output*,int ,double,double,int ,struct render_data*) ;
 int render_surface_iterator ;

__attribute__((used)) static void render_view_toplevels(struct sway_view *view,
  struct sway_output *output, pixman_region32_t *damage, float alpha) {
 struct render_data data = {
  .damage = damage,
  .alpha = alpha,
 };

 double ox = view->container->surface_x -
  output->lx - view->geometry.x;
 double oy = view->container->surface_y -
  output->ly - view->geometry.y;
 output_surface_for_each_surface(output, view->surface, ox, oy,
   render_surface_iterator, &data);
}
