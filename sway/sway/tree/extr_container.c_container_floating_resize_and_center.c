
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_box {int width; int height; scalar_t__ y; scalar_t__ x; } ;
struct sway_workspace {scalar_t__ width; scalar_t__ height; scalar_t__ y; scalar_t__ x; TYPE_1__* output; } ;
struct sway_container {scalar_t__ width; scalar_t__ height; scalar_t__ content_width; scalar_t__ content_height; int border_top; int border_bottom; int border_left; int border_right; scalar_t__ content_y; scalar_t__ content_x; scalar_t__ y; scalar_t__ x; int view; struct sway_workspace* workspace; } ;
struct TYPE_4__ {int output_layout; } ;
struct TYPE_3__ {int wlr_output; } ;


 int container_set_geometry_from_content (struct sway_container*) ;
 int floating_natural_resize (struct sway_container*) ;
 TYPE_2__* root ;
 struct wlr_box* wlr_output_layout_get_box (int ,int ) ;

void container_floating_resize_and_center(struct sway_container *con) {
 struct sway_workspace *ws = con->workspace;
 if (!ws) {

  floating_natural_resize(con);
  return;
 }

 struct wlr_box *ob = wlr_output_layout_get_box(root->output_layout,
   ws->output->wlr_output);
 if (!ob) {

  con->x = 0;
  con->y = 0;
  con->width = 0;
  con->height = 0;
  return;
 }

 floating_natural_resize(con);
 if (!con->view) {
  if (con->width > ws->width || con->height > ws->height) {
   con->x = ob->x + (ob->width - con->width) / 2;
   con->y = ob->y + (ob->height - con->height) / 2;
  } else {
   con->x = ws->x + (ws->width - con->width) / 2;
   con->y = ws->y + (ws->height - con->height) / 2;
  }
 } else {
  if (con->content_width > ws->width
    || con->content_height > ws->height) {
   con->content_x = ob->x + (ob->width - con->content_width) / 2;
   con->content_y = ob->y + (ob->height - con->content_height) / 2;
  } else {
   con->content_x = ws->x + (ws->width - con->content_width) / 2;
   con->content_y = ws->y + (ws->height - con->content_height) / 2;
  }


  con->border_top = con->border_bottom = 1;
  con->border_left = con->border_right = 1;

  container_set_geometry_from_content(con);
 }
}
