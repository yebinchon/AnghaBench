
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct grid {int hsize; int hlimit; int hscrolled; } ;


 int grid_trim_history (struct grid*,int) ;

void
grid_collect_history(struct grid *gd)
{
 u_int ny;

 if (gd->hsize == 0 || gd->hsize < gd->hlimit)
  return;

 ny = gd->hlimit / 10;
 if (ny < 1)
  ny = 1;
 if (ny > gd->hsize)
  ny = gd->hsize;





 grid_trim_history(gd, ny);

 gd->hsize -= ny;
 if (gd->hscrolled > gd->hsize)
  gd->hscrolled = gd->hsize;
}
