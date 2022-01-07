
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct grid_line {size_t hsize; size_t sy; int flags; size_t cellused; scalar_t__ hscrolled; struct grid_line* linedata; int sx; } ;
struct TYPE_2__ {size_t width; } ;
struct grid_cell {TYPE_1__ data; } ;
struct grid {size_t hsize; size_t sy; int flags; size_t cellused; scalar_t__ hscrolled; struct grid* linedata; int sx; } ;


 int GRID_LINE_DEAD ;
 int GRID_LINE_EXTENDED ;
 int GRID_LINE_WRAPPED ;
 int free (struct grid_line*) ;
 struct grid_line* grid_create (int ,int ,int ) ;
 int grid_get_cell1 (struct grid_line*,size_t,struct grid_cell*) ;
 int grid_reflow_add (struct grid_line*,scalar_t__) ;
 int grid_reflow_join (struct grid_line*,struct grid_line*,size_t,size_t,size_t,int ) ;
 int grid_reflow_move (struct grid_line*,struct grid_line*) ;
 int grid_reflow_split (struct grid_line*,struct grid_line*,size_t,size_t,size_t) ;

void
grid_reflow(struct grid *gd, u_int sx)
{
 struct grid *target;
 struct grid_line *gl;
 struct grid_cell gc;
 u_int yy, width, i, at, first;





 target = grid_create(gd->sx, 0, 0);




 for (yy = 0; yy < gd->hsize + gd->sy; yy++) {
  gl = &gd->linedata[yy];
  if (gl->flags & GRID_LINE_DEAD)
   continue;






  first = at = width = 0;
  if (~gl->flags & GRID_LINE_EXTENDED) {
   first = 1;
   width = gl->cellused;
   if (width > sx)
    at = sx;
   else
    at = width;
  } else {
   for (i = 0; i < gl->cellused; i++) {
    grid_get_cell1(gl, i, &gc);
    if (i == 0)
     first = gc.data.width;
    if (at == 0 && width + gc.data.width > sx)
     at = i;
    width += gc.data.width;
   }
  }





  if (width == sx || first > sx) {
   grid_reflow_move(target, gl);
   continue;
  }





  if (width > sx) {
   grid_reflow_split(target, gd, sx, yy, at);
   continue;
  }





  if (gl->flags & GRID_LINE_WRAPPED)
   grid_reflow_join(target, gd, sx, yy, width, 0);
  else
   grid_reflow_move(target, gl);
 }




 if (target->sy < gd->sy)
  grid_reflow_add(target, gd->sy - target->sy);
 gd->hsize = target->sy - gd->sy;
 if (gd->hscrolled > gd->hsize)
  gd->hscrolled = gd->hsize;
 free(gd->linedata);
 gd->linedata = target->linedata;
 free(target);
}
