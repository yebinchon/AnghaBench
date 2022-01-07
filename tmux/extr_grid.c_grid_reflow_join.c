
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct grid_line {size_t cellused; int flags; size_t cellsize; int extddata; int celldata; } ;
struct TYPE_2__ {size_t width; } ;
struct grid_cell {TYPE_1__ data; } ;
struct grid {size_t sy; size_t hsize; size_t hscrolled; struct grid_line* linedata; } ;


 int GRID_LINE_WRAPPED ;
 int free (int ) ;
 int grid_get_cell1 (struct grid_line*,size_t,struct grid_cell*) ;
 int grid_move_cells (struct grid*,int ,size_t,size_t,size_t,int) ;
 int grid_reflow_dead (struct grid_line*) ;
 struct grid_line* grid_reflow_move (struct grid*,struct grid_line*) ;
 int grid_set_cell (struct grid*,size_t,size_t,struct grid_cell*) ;

__attribute__((used)) static void
grid_reflow_join(struct grid *target, struct grid *gd, u_int sx, u_int yy,
    u_int width, int already)
{
 struct grid_line *gl, *from = ((void*)0);
 struct grid_cell gc;
 u_int lines, left, i, to, line, want = 0;
 u_int at;
 int wrapped = 1;




 if (!already) {
  to = target->sy;
  gl = grid_reflow_move(target, &gd->linedata[yy]);
 } else {
  to = target->sy - 1;
  gl = &target->linedata[to];
 }
 at = gl->cellused;




 lines = 0;
 for (;;) {




  if (yy + 1 + lines == gd->hsize + gd->sy)
   break;
  line = yy + 1 + lines;


  if (~gd->linedata[line].flags & GRID_LINE_WRAPPED)
   wrapped = 0;
  if (gd->linedata[line].cellused == 0) {
   if (!wrapped)
    break;
   lines++;
   continue;
  }






  grid_get_cell1(&gd->linedata[line], 0, &gc);
  if (width + gc.data.width > sx)
   break;
  width += gc.data.width;
  grid_set_cell(target, at, to, &gc);
  at++;


  from = &gd->linedata[line];
  for (want = 1; want < from->cellused; want++) {
   grid_get_cell1(from, want, &gc);
   if (width + gc.data.width > sx)
    break;
   width += gc.data.width;

   grid_set_cell(target, at, to, &gc);
   at++;
  }
  lines++;





  if (!wrapped || want != from->cellused || width == sx)
   break;
 }
 if (lines == 0)
  return;






 left = from->cellused - want;
 if (left != 0) {
  grid_move_cells(gd, 0, want, yy + lines, left, 8);
  from->cellsize = from->cellused = left;
  lines--;
 } else if (!wrapped)
  gl->flags &= ~GRID_LINE_WRAPPED;


 for (i = yy + 1; i < yy + 1 + lines; i++) {
  free(gd->linedata[i].celldata);
  free(gd->linedata[i].extddata);
  grid_reflow_dead(&gd->linedata[i]);
 }


 if (gd->hscrolled > to + lines)
  gd->hscrolled -= lines;
 else if (gd->hscrolled > to)
  gd->hscrolled = to;
}
