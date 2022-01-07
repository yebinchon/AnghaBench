
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int height; int width; int y; int x; } ;
struct sway_workspace {int height; int width; int y; int x; } ;



void workspace_get_box(struct sway_workspace *workspace, struct wlr_box *box) {
 box->x = workspace->x;
 box->y = workspace->y;
 box->width = workspace->width;
 box->height = workspace->height;
}
