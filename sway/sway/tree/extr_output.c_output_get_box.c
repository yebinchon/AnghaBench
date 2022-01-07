
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_box {int height; int width; int y; int x; } ;
struct sway_output {int height; int width; int ly; int lx; } ;



void output_get_box(struct sway_output *output, struct wlr_box *box) {
 box->x = output->lx;
 box->y = output->ly;
 box->width = output->width;
 box->height = output->height;
}
