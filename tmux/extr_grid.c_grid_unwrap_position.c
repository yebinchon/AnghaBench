
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct grid {int hsize; int sy; TYPE_1__* linedata; } ;
struct TYPE_2__ {int flags; int cellused; } ;


 int GRID_LINE_WRAPPED ;
 int UINT_MAX ;

void
grid_unwrap_position(struct grid *gd, u_int *px, u_int *py, u_int wx, u_int wy)
{
 u_int yy, ax = 0, ay = 0;

 for (yy = 0; yy < gd->hsize + gd->sy - 1; yy++) {
  if (ay == wy)
   break;
  if (gd->linedata[yy].flags & GRID_LINE_WRAPPED)
   ax += gd->linedata[yy].cellused;
  else {
   ax = 0;
   ay++;
  }
 }





 if (wx == UINT_MAX) {
  while (gd->linedata[yy].flags & GRID_LINE_WRAPPED)
   yy++;
  wx = gd->linedata[yy].cellused;
 } else {
  while (gd->linedata[yy].flags & GRID_LINE_WRAPPED) {
   if (wx < gd->linedata[yy].cellused)
    break;
   wx -= gd->linedata[yy].cellused;
   yy++;
  }
 }
 *px = wx;
 *py = yy;
}
