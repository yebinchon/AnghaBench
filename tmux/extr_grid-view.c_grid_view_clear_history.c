
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct grid_line {scalar_t__ cellused; } ;
struct grid {scalar_t__ sy; scalar_t__ hscrolled; int sx; } ;


 int grid_collect_history (struct grid*) ;
 struct grid_line* grid_get_line (struct grid*,int ) ;
 int grid_scroll_history (struct grid*,scalar_t__) ;
 int grid_view_clear (struct grid*,int ,int ,int ,scalar_t__,scalar_t__) ;
 int grid_view_y (struct grid*,scalar_t__) ;

void
grid_view_clear_history(struct grid *gd, u_int bg)
{
 struct grid_line *gl;
 u_int yy, last;


 last = 0;
 for (yy = 0; yy < gd->sy; yy++) {
  gl = grid_get_line(gd, grid_view_y(gd, yy));
  if (gl->cellused != 0)
   last = yy + 1;
 }
 if (last == 0) {
  grid_view_clear(gd, 0, 0, gd->sx, gd->sy, bg);
  return;
 }


 for (yy = 0; yy < last; yy++) {
  grid_collect_history(gd);
  grid_scroll_history(gd, bg);
 }
 if (last < gd->sy)
  grid_view_clear(gd, 0, 0, gd->sx, gd->sy - last, bg);
 gd->hscrolled = 0;
}
