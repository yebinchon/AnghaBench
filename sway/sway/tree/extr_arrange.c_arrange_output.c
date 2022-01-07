
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlr_box {int height; int width; int y; int x; } ;
struct sway_workspace {int dummy; } ;
struct sway_output {TYPE_1__* workspaces; int height; int width; int ly; int lx; int wlr_output; } ;
struct TYPE_6__ {scalar_t__ reloading; } ;
struct TYPE_5__ {int output_layout; } ;
struct TYPE_4__ {int length; struct sway_workspace** items; } ;


 int arrange_workspace (struct sway_workspace*) ;
 TYPE_3__* config ;
 TYPE_2__* root ;
 struct wlr_box* wlr_output_layout_get_box (int ,int ) ;

void arrange_output(struct sway_output *output) {
 if (config->reloading) {
  return;
 }
 const struct wlr_box *output_box = wlr_output_layout_get_box(
   root->output_layout, output->wlr_output);
 output->lx = output_box->x;
 output->ly = output_box->y;
 output->width = output_box->width;
 output->height = output_box->height;

 for (int i = 0; i < output->workspaces->length; ++i) {
  struct sway_workspace *workspace = output->workspaces->items[i];
  arrange_workspace(workspace);
 }
}
