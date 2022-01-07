
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_box {scalar_t__ height; scalar_t__ width; scalar_t__ y; scalar_t__ x; } ;
struct sway_view {TYPE_2__* surface; } ;
struct TYPE_3__ {scalar_t__ height; scalar_t__ width; } ;
struct TYPE_4__ {TYPE_1__ current; } ;



__attribute__((used)) static void get_geometry(struct sway_view *view, struct wlr_box *box) {
 box->x = box->y = 0;
 if (view->surface) {
  box->width = view->surface->current.width;
  box->height = view->surface->current.height;
 } else {
  box->width = 0;
  box->height = 0;
 }
}
