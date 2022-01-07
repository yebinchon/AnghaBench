
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;
struct wlr_surface {int sx; int sy; TYPE_1__ current; } ;
struct wlr_box {int width; int height; int y; int x; } ;
struct sway_output {int width; int height; } ;
struct surface_iterator_data {int rotation; int oy; int ox; int height; int width; struct sway_output* output; } ;


 int memcpy (struct wlr_box*,struct wlr_box*,int) ;
 int rotate_child_position (double*,double*,int,int,int ,int ,int ) ;
 int wlr_box_intersection (struct wlr_box*,struct wlr_box*,struct wlr_box*) ;
 int wlr_box_rotated_bounds (struct wlr_box*,struct wlr_box*,int ) ;
 int wlr_surface_has_buffer (struct wlr_surface*) ;

__attribute__((used)) static bool get_surface_box(struct surface_iterator_data *data,
  struct wlr_surface *surface, int sx, int sy,
  struct wlr_box *surface_box) {
 struct sway_output *output = data->output;

 if (!wlr_surface_has_buffer(surface)) {
  return 0;
 }

 int sw = surface->current.width;
 int sh = surface->current.height;

 double _sx = sx + surface->sx;
 double _sy = sy + surface->sy;
 rotate_child_position(&_sx, &_sy, sw, sh, data->width, data->height,
  data->rotation);

 struct wlr_box box = {
  .x = data->ox + _sx,
  .y = data->oy + _sy,
  .width = sw,
  .height = sh,
 };
 if (surface_box != ((void*)0)) {
  memcpy(surface_box, &box, sizeof(struct wlr_box));
 }

 struct wlr_box rotated_box;
 wlr_box_rotated_bounds(&rotated_box, &box, data->rotation);

 struct wlr_box output_box = {
  .width = output->width,
  .height = output->height,
 };

 struct wlr_box intersection;
 return wlr_box_intersection(&intersection, &output_box, &rotated_box);
}
