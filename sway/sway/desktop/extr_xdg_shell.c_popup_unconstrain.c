
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wlr_xdg_popup {int dummy; } ;
struct wlr_box {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {struct sway_view* view; } ;
struct sway_xdg_popup {TYPE_4__* wlr_xdg_surface; TYPE_3__ child; } ;
struct sway_view {TYPE_2__* container; } ;
struct sway_output {int height; int width; scalar_t__ ly; scalar_t__ lx; } ;
struct TYPE_8__ {struct wlr_xdg_popup* popup; } ;
struct TYPE_6__ {scalar_t__ content_y; scalar_t__ content_x; TYPE_1__* workspace; } ;
struct TYPE_5__ {struct sway_output* output; } ;


 int wlr_xdg_popup_unconstrain_from_box (struct wlr_xdg_popup*,struct wlr_box*) ;

__attribute__((used)) static void popup_unconstrain(struct sway_xdg_popup *popup) {
 struct sway_view *view = popup->child.view;
 struct wlr_xdg_popup *wlr_popup = popup->wlr_xdg_surface->popup;

 struct sway_output *output = view->container->workspace->output;



 struct wlr_box output_toplevel_sx_box = {
  .x = output->lx - view->container->content_x,
  .y = output->ly - view->container->content_y,
  .width = output->width,
  .height = output->height,
 };

 wlr_xdg_popup_unconstrain_from_box(wlr_popup, &output_toplevel_sx_box);
}
