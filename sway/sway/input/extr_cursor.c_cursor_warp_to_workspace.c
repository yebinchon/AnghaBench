
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {double x; double width; double y; double height; } ;
struct sway_cursor {int cursor; } ;


 int wlr_cursor_warp (int ,int *,double,double) ;

void cursor_warp_to_workspace(struct sway_cursor *cursor,
  struct sway_workspace *workspace) {
 if (!workspace) {
  return;
 }

 double x = workspace->x + workspace->width / 2.0;
 double y = workspace->y + workspace->height / 2.0;

 wlr_cursor_warp(cursor->cursor, ((void*)0), x, y);
}
