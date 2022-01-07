
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_list {int dummy; } ;
struct sway_output {int dummy; } ;
struct render_data {float alpha; int * damage; } ;
typedef int pixman_region32_t ;


 int output_layer_for_each_surface (struct sway_output*,struct wl_list*,int ,struct render_data*) ;
 int render_surface_iterator ;

__attribute__((used)) static void render_layer(struct sway_output *output,
  pixman_region32_t *damage, struct wl_list *layer_surfaces) {
 struct render_data data = {
  .damage = damage,
  .alpha = 1.0f,
 };
 output_layer_for_each_surface(output, layer_surfaces,
  render_surface_iterator, &data);
}
