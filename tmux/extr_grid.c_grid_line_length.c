
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_3__ {int size; char* data; } ;
struct grid_cell {TYPE_1__ data; } ;
struct grid {scalar_t__ sx; } ;
struct TYPE_4__ {scalar_t__ cellsize; } ;


 int grid_get_cell (struct grid*,scalar_t__,scalar_t__,struct grid_cell*) ;
 TYPE_2__* grid_get_line (struct grid*,scalar_t__) ;

u_int
grid_line_length(struct grid *gd, u_int py)
{
 struct grid_cell gc;
 u_int px;

 px = grid_get_line(gd, py)->cellsize;
 if (px > gd->sx)
  px = gd->sx;
 while (px > 0) {
  grid_get_cell(gd, px - 1, py, &gc);
  if (gc.data.size != 1 || *gc.data.data != ' ')
   break;
  px--;
 }
 return (px);
}
