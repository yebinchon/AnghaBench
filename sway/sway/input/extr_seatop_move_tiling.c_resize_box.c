
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int height; int width; int x; int y; } ;
typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
__attribute__((used)) static void resize_box(struct wlr_box *box, enum wlr_edges edge,
  int thickness) {
 switch (edge) {
 case 128:
  box->height = thickness;
  break;
 case 131:
  box->width = thickness;
  break;
 case 129:
  box->x = box->x + box->width - thickness;
  box->width = thickness;
  break;
 case 132:
  box->y = box->y + box->height - thickness;
  box->height = thickness;
  break;
 case 130:
  box->x += thickness;
  box->y += thickness;
  box->width -= thickness * 2;
  box->height -= thickness * 2;
  break;
 }
}
