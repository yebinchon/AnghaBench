
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_box {int height; int width; int y; int x; } ;
struct sway_output {int dummy; } ;
struct sway_container {int height; int width; int y; int x; } ;
struct TYPE_6__ {scalar_t__ reloading; } ;
struct TYPE_5__ {TYPE_1__* outputs; int height; int width; int y; int x; struct sway_container* fullscreen_global; int output_layout; } ;
struct TYPE_4__ {int length; struct sway_output** items; } ;


 int arrange_container (struct sway_container*) ;
 int arrange_output (struct sway_output*) ;
 TYPE_3__* config ;
 TYPE_2__* root ;
 struct wlr_box* wlr_output_layout_get_box (int ,int *) ;

void arrange_root(void) {
 if (config->reloading) {
  return;
 }
 const struct wlr_box *layout_box =
  wlr_output_layout_get_box(root->output_layout, ((void*)0));
 root->x = layout_box->x;
 root->y = layout_box->y;
 root->width = layout_box->width;
 root->height = layout_box->height;

 if (root->fullscreen_global) {
  struct sway_container *fs = root->fullscreen_global;
  fs->x = root->x;
  fs->y = root->y;
  fs->width = root->width;
  fs->height = root->height;
  arrange_container(fs);
 } else {
  for (int i = 0; i < root->outputs->length; ++i) {
   struct sway_output *output = root->outputs->items[i];
   arrange_output(output);
  }
 }
}
