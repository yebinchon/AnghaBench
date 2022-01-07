
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct grid {int dummy; } ;


 int grid_clear (struct grid*,int ,int ,int ,int ,int ) ;
 int grid_view_x (struct grid*,int ) ;
 int grid_view_y (struct grid*,int ) ;

void
grid_view_clear(struct grid *gd, u_int px, u_int py, u_int nx, u_int ny,
    u_int bg)
{
 px = grid_view_x(gd, px);
 py = grid_view_y(gd, py);

 grid_clear(gd, px, py, nx, ny, bg);
}
