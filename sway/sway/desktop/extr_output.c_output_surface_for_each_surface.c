
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sway_surface_iterator_func_t ;
struct TYPE_2__ {int height; int width; } ;
struct wlr_surface {TYPE_1__ current; } ;
struct sway_output {int dummy; } ;
struct surface_iterator_data {void* user_data; double ox; double oy; int rotation; int height; int width; struct sway_output* output; int user_iterator; } ;


 int output_for_each_surface_iterator ;
 int wlr_surface_for_each_surface (struct wlr_surface*,int ,struct surface_iterator_data*) ;

void output_surface_for_each_surface(struct sway_output *output,
  struct wlr_surface *surface, double ox, double oy,
  sway_surface_iterator_func_t iterator, void *user_data) {
 struct surface_iterator_data data = {
  .user_iterator = iterator,
  .user_data = user_data,
  .output = output,
  .ox = ox,
  .oy = oy,
  .width = surface->current.width,
  .height = surface->current.height,
  .rotation = 0,
 };

 wlr_surface_for_each_surface(surface,
  output_for_each_surface_iterator, &data);
}
