
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct grid_line {scalar_t__ cellsize; } ;
struct grid_cell {int dummy; } ;
struct grid {scalar_t__ sx; scalar_t__ sy; struct grid_line* linedata; } ;


 int grid_cells_equal (struct grid_cell*,struct grid_cell*) ;
 int grid_get_cell (struct grid*,size_t,size_t,struct grid_cell*) ;

int
grid_compare(struct grid *ga, struct grid *gb)
{
 struct grid_line *gla, *glb;
 struct grid_cell gca, gcb;
 u_int xx, yy;

 if (ga->sx != gb->sx || ga->sy != gb->sy)
  return (1);

 for (yy = 0; yy < ga->sy; yy++) {
  gla = &ga->linedata[yy];
  glb = &gb->linedata[yy];
  if (gla->cellsize != glb->cellsize)
   return (1);
  for (xx = 0; xx < gla->cellsize; xx++) {
   grid_get_cell(ga, xx, yy, &gca);
   grid_get_cell(gb, xx, yy, &gcb);
   if (!grid_cells_equal(&gca, &gcb))
    return (1);
  }
 }

 return (0);
}
