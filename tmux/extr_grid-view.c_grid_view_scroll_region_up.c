
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct grid {int flags; int sy; } ;


 int GRID_HISTORY ;
 int grid_collect_history (struct grid*) ;
 int grid_move_lines (struct grid*,int,int,int,int) ;
 int grid_scroll_history (struct grid*,int) ;
 int grid_scroll_history_region (struct grid*,int,int,int) ;
 int grid_view_y (struct grid*,int) ;

void
grid_view_scroll_region_up(struct grid *gd, u_int rupper, u_int rlower,
    u_int bg)
{
 if (gd->flags & GRID_HISTORY) {
  grid_collect_history(gd);
  if (rupper == 0 && rlower == gd->sy - 1)
   grid_scroll_history(gd, bg);
  else {
   rupper = grid_view_y(gd, rupper);
   rlower = grid_view_y(gd, rlower);
   grid_scroll_history_region(gd, rupper, rlower, bg);
  }
 } else {
  rupper = grid_view_y(gd, rupper);
  rlower = grid_view_y(gd, rlower);
  grid_move_lines(gd, rupper, rupper + 1, rlower - rupper, bg);
 }
}
