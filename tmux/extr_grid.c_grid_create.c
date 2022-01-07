
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int ;
struct grid {scalar_t__ sy; int * linedata; void* hlimit; scalar_t__ hsize; scalar_t__ hscrolled; int flags; void* sx; } ;


 int GRID_HISTORY ;
 int * xcalloc (scalar_t__,int) ;
 struct grid* xmalloc (int) ;

struct grid *
grid_create(u_int sx, u_int sy, u_int hlimit)
{
 struct grid *gd;

 gd = xmalloc(sizeof *gd);
 gd->sx = sx;
 gd->sy = sy;

 gd->flags = GRID_HISTORY;

 gd->hscrolled = 0;
 gd->hsize = 0;
 gd->hlimit = hlimit;

 if (gd->sy != 0)
  gd->linedata = xcalloc(gd->sy, sizeof *gd->linedata);
 else
  gd->linedata = ((void*)0);

 return (gd);
}
