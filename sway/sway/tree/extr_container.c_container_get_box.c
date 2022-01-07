
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int height; int width; int y; int x; } ;
struct sway_container {int height; int width; int y; int x; } ;



void container_get_box(struct sway_container *container, struct wlr_box *box) {
 box->x = container->x;
 box->y = container->y;
 box->width = container->width;
 box->height = container->height;
}
