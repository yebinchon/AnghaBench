
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct grid {int sx; } ;


 int grid_clear (struct grid*,int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int grid_move_lines (struct grid*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ grid_view_y (struct grid*,scalar_t__) ;

void
grid_view_delete_lines_region(struct grid *gd, u_int rlower, u_int py,
    u_int ny, u_int bg)
{
 u_int ny2;

 rlower = grid_view_y(gd, rlower);

 py = grid_view_y(gd, py);

 ny2 = rlower + 1 - py - ny;
 grid_move_lines(gd, py, py + ny, ny2, bg);
 grid_clear(gd, 0, py + ny2, gd->sx, ny - ny2, bg);
}
