
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct screen {int cy; void* rlower; scalar_t__ rupper; struct grid* grid; } ;
struct grid_line {int dummy; } ;
struct grid {int flags; int hscrolled; int hsize; int sy; } ;


 int GRID_HISTORY ;
 int fatalx (char*) ;
 int grid_adjust_lines (struct grid*,int) ;
 int grid_get_line (struct grid*,int) ;
 int grid_view_delete_lines (struct grid*,int,int,int) ;
 int memset (int ,int ,int) ;
 void* screen_size_y (struct screen*) ;

__attribute__((used)) static void
screen_resize_y(struct screen *s, u_int sy)
{
 struct grid *gd = s->grid;
 u_int needed, available, oldy, i;

 if (sy == 0)
  fatalx("zero size");
 oldy = screen_size_y(s);
 if (sy < oldy) {
  needed = oldy - sy;


  available = oldy - 1 - s->cy;
  if (available > 0) {
   if (available > needed)
    available = needed;
   grid_view_delete_lines(gd, oldy - available, available,
       8);
  }
  needed -= available;






  available = s->cy;
  if (gd->flags & GRID_HISTORY) {
   gd->hscrolled += needed;
   gd->hsize += needed;
  } else if (needed > 0 && available > 0) {
   if (available > needed)
    available = needed;
   grid_view_delete_lines(gd, 0, available, 8);
  }
  s->cy -= needed;
 }


 grid_adjust_lines(gd, gd->hsize + sy);


 if (sy > oldy) {
  needed = sy - oldy;





  available = gd->hscrolled;
  if (gd->flags & GRID_HISTORY && available > 0) {
   if (available > needed)
    available = needed;
   gd->hscrolled -= available;
   gd->hsize -= available;
   s->cy += available;
  } else
   available = 0;
  needed -= available;


  for (i = gd->hsize + sy - needed; i < gd->hsize + sy; i++)
   memset(grid_get_line(gd, i), 0, sizeof(struct grid_line));
 }


 gd->sy = sy;
 s->rupper = 0;
 s->rlower = screen_size_y(s) - 1;
}
