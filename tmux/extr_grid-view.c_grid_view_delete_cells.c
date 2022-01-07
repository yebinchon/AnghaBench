
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct grid {scalar_t__ sx; } ;


 int grid_clear (struct grid*,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__) ;
 int grid_move_cells (struct grid*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ grid_view_x (struct grid*,scalar_t__) ;
 scalar_t__ grid_view_y (struct grid*,scalar_t__) ;

void
grid_view_delete_cells(struct grid *gd, u_int px, u_int py, u_int nx, u_int bg)
{
 u_int sx;

 px = grid_view_x(gd, px);
 py = grid_view_y(gd, py);

 sx = grid_view_x(gd, gd->sx);

 grid_move_cells(gd, px, px + nx, py, sx - px - nx, bg);
 grid_clear(gd, sx - nx, py, px + nx - (sx - nx), 1, bg);
}
