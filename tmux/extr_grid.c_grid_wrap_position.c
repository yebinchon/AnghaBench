
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct grid {TYPE_1__* linedata; } ;
struct TYPE_2__ {int flags; size_t cellused; } ;


 int GRID_LINE_WRAPPED ;
 size_t UINT_MAX ;

void
grid_wrap_position(struct grid *gd, u_int px, u_int py, u_int *wx, u_int *wy)
{
 u_int ax = 0, ay = 0, yy;

 for (yy = 0; yy < py; yy++) {
  if (gd->linedata[yy].flags & GRID_LINE_WRAPPED)
   ax += gd->linedata[yy].cellused;
  else {
   ax = 0;
   ay++;
  }
 }
 if (px >= gd->linedata[yy].cellused)
  ax = UINT_MAX;
 else
  ax += px;
 *wx = ax;
 *wy = ay;
}
