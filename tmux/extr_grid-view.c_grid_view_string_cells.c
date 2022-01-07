
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct grid {int dummy; } ;


 char* grid_string_cells (struct grid*,int ,int ,int ,int *,int ,int ,int ) ;
 int grid_view_x (struct grid*,int ) ;
 int grid_view_y (struct grid*,int ) ;

char *
grid_view_string_cells(struct grid *gd, u_int px, u_int py, u_int nx)
{
 px = grid_view_x(gd, px);
 py = grid_view_y(gd, py);

 return (grid_string_cells(gd, px, py, nx, ((void*)0), 0, 0, 0));
}
