
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_output {int transform_matrix; int scale; } ;
struct wlr_box {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;
struct sway_view {TYPE_3__* saved_buffer; int saved_buffer_height; int saved_buffer_width; TYPE_2__ saved_geometry; TYPE_1__* container; } ;
struct sway_output {int height; int width; scalar_t__ ly; scalar_t__ lx; struct wlr_output* wlr_output; } ;
typedef int pixman_region32_t ;
struct TYPE_6__ {int texture; } ;
struct TYPE_4__ {scalar_t__ surface_y; scalar_t__ surface_x; } ;


 int WL_OUTPUT_TRANSFORM_NORMAL ;
 int render_texture (struct wlr_output*,int *,int ,struct wlr_box*,float*,float) ;
 int scale_box (struct wlr_box*,int ) ;
 int wlr_box_intersection (struct wlr_box*,struct wlr_box*,struct wlr_box*) ;
 int wlr_matrix_project_box (float*,struct wlr_box*,int ,int ,int ) ;

__attribute__((used)) static void render_saved_view(struct sway_view *view,
  struct sway_output *output, pixman_region32_t *damage, float alpha) {
 struct wlr_output *wlr_output = output->wlr_output;

 if (!view->saved_buffer || !view->saved_buffer->texture) {
  return;
 }
 struct wlr_box box = {
  .x = view->container->surface_x - output->lx -
   view->saved_geometry.x,
  .y = view->container->surface_y - output->ly -
   view->saved_geometry.y,
  .width = view->saved_buffer_width,
  .height = view->saved_buffer_height,
 };

 struct wlr_box output_box = {
  .width = output->width,
  .height = output->height,
 };

 struct wlr_box intersection;
 bool intersects = wlr_box_intersection(&intersection, &output_box, &box);
 if (!intersects) {
  return;
 }

 scale_box(&box, wlr_output->scale);

 float matrix[9];
 wlr_matrix_project_box(matrix, &box, WL_OUTPUT_TRANSFORM_NORMAL, 0,
  wlr_output->transform_matrix);

 render_texture(wlr_output, damage, view->saved_buffer->texture,
   &box, matrix, alpha);




}
