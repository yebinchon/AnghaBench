
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_output {int dummy; } ;
struct wlr_box {int x; int width; int y; int height; } ;
struct sway_output {int wlr_output; } ;
typedef enum wlr_direction { ____Placeholder_wlr_direction } wlr_direction ;
struct TYPE_2__ {int output_layout; } ;


 struct sway_output* output_from_wlr_output (struct wlr_output*) ;
 TYPE_1__* root ;
 int sway_assert (int,char*,int) ;
 struct wlr_output* wlr_output_layout_adjacent_output (int ,int,int ,int,int) ;
 struct wlr_box* wlr_output_layout_get_box (int ,int ) ;

struct sway_output *output_get_in_direction(struct sway_output *reference,
  enum wlr_direction direction) {
 if (!sway_assert(direction, "got invalid direction: %d", direction)) {
  return ((void*)0);
 }
 struct wlr_box *output_box =
  wlr_output_layout_get_box(root->output_layout, reference->wlr_output);
 int lx = output_box->x + output_box->width / 2;
 int ly = output_box->y + output_box->height / 2;
 struct wlr_output *wlr_adjacent = wlr_output_layout_adjacent_output(
   root->output_layout, direction, reference->wlr_output, lx, ly);
 if (!wlr_adjacent) {
  return ((void*)0);
 }
 return output_from_wlr_output(wlr_adjacent);
}
