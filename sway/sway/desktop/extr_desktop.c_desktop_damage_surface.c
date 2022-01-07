
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_surface {int dummy; } ;
struct wlr_box {scalar_t__ y; scalar_t__ x; } ;
struct sway_output {int wlr_output; } ;
struct TYPE_4__ {int output_layout; TYPE_1__* outputs; } ;
struct TYPE_3__ {int length; struct sway_output** items; } ;


 int output_damage_surface (struct sway_output*,scalar_t__,scalar_t__,struct wlr_surface*,int) ;
 TYPE_2__* root ;
 struct wlr_box* wlr_output_layout_get_box (int ,int ) ;

void desktop_damage_surface(struct wlr_surface *surface, double lx, double ly,
  bool whole) {
 for (int i = 0; i < root->outputs->length; ++i) {
  struct sway_output *output = root->outputs->items[i];
  struct wlr_box *output_box = wlr_output_layout_get_box(
   root->output_layout, output->wlr_output);
  output_damage_surface(output, lx - output_box->x,
   ly - output_box->y, surface, whole);
 }
}
