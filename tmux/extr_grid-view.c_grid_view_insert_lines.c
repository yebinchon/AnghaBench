
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct grid {scalar_t__ sy; } ;


 int grid_move_lines (struct grid*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ grid_view_y (struct grid*,scalar_t__) ;

void
grid_view_insert_lines(struct grid *gd, u_int py, u_int ny, u_int bg)
{
 u_int sy;

 py = grid_view_y(gd, py);

 sy = grid_view_y(gd, gd->sy);

 grid_move_lines(gd, py + ny, py, sy - py - ny, bg);
}
