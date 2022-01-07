
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int height; int width; int y; int x; } ;
struct sway_root {int height; int width; int y; int x; } ;



void root_get_box(struct sway_root *root, struct wlr_box *box) {
 box->x = root->x;
 box->y = root->y;
 box->width = root->width;
 box->height = root->height;
}
