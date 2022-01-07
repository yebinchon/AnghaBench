
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct grid_cell {int dummy; } ;
struct grid {int dummy; } ;


 int grid_get_cell (struct grid*,int ,int ,struct grid_cell*) ;
 int grid_view_x (struct grid*,int ) ;
 int grid_view_y (struct grid*,int ) ;

void
grid_view_get_cell(struct grid *gd, u_int px, u_int py, struct grid_cell *gc)
{
 grid_get_cell(gd, grid_view_x(gd, px), grid_view_y(gd, py), gc);
}
