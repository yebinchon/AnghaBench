
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_box {int height; int width; int y; int x; } ;
struct sway_output {TYPE_1__* wlr_output; } ;
struct sway_container_state {int border_thickness; int width; int y; int x; int border_top; } ;
struct sway_container {int alpha; struct sway_container_state current; } ;
struct border_colors {int child_border; } ;
typedef int pixman_region32_t ;
struct TYPE_2__ {float scale; } ;


 int memcpy (float**,int ,int) ;
 int premultiply_alpha (float*,int ) ;
 int render_rect (struct sway_output*,int *,struct wlr_box*,float*) ;
 int scale_box (struct wlr_box*,float) ;

__attribute__((used)) static void render_top_border(struct sway_output *output,
  pixman_region32_t *output_damage, struct sway_container *con,
  struct border_colors *colors) {
 struct sway_container_state *state = &con->current;
 if (!state->border_top) {
  return;
 }
 struct wlr_box box;
 float color[4];
 float output_scale = output->wlr_output->scale;


 memcpy(&color, colors->child_border, sizeof(float) * 4);
 premultiply_alpha(color, con->alpha);
 box.x = state->x;
 box.y = state->y;
 box.width = state->width;
 box.height = state->border_thickness;
 scale_box(&box, output_scale);
 render_rect(output, output_damage, &box, color);
}
