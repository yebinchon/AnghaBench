
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct grid {size_t hsize; int * linedata; int hscrolled; scalar_t__ sy; } ;


 int grid_compact_line (int *) ;
 int grid_empty_line (struct grid*,scalar_t__,scalar_t__) ;
 int * xreallocarray (int *,scalar_t__,int) ;

void
grid_scroll_history(struct grid *gd, u_int bg)
{
 u_int yy;

 yy = gd->hsize + gd->sy;
 gd->linedata = xreallocarray(gd->linedata, yy + 1,
     sizeof *gd->linedata);
 grid_empty_line(gd, yy, bg);

 gd->hscrolled++;
 grid_compact_line(&gd->linedata[gd->hsize]);
 gd->hsize++;
}
