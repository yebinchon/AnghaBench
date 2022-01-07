
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct grid_line {size_t cellused; int flags; size_t cellsize; } ;
struct TYPE_2__ {size_t width; } ;
struct grid_cell {TYPE_1__ data; } ;
struct grid {size_t sy; size_t hscrolled; struct grid_line* linedata; } ;


 int GRID_LINE_EXTENDED ;
 int GRID_LINE_WRAPPED ;
 int grid_get_cell1 (struct grid_line*,size_t,struct grid_cell*) ;
 struct grid_line* grid_reflow_add (struct grid*,size_t) ;
 int grid_reflow_dead (struct grid_line*) ;
 int grid_reflow_join (struct grid*,struct grid*,size_t,size_t,size_t,int) ;
 int grid_set_cell (struct grid*,size_t,size_t,struct grid_cell*) ;
 int memcpy (struct grid_line*,struct grid_line*,int) ;

__attribute__((used)) static void
grid_reflow_split(struct grid *target, struct grid *gd, u_int sx, u_int yy,
    u_int at)
{
 struct grid_line *gl = &gd->linedata[yy], *first;
 struct grid_cell gc;
 u_int line, lines, width, i, xx;
 u_int used = gl->cellused;
 int flags = gl->flags;


 if (~gl->flags & GRID_LINE_EXTENDED)
  lines = 1 + (gl->cellused - 1) / sx;
 else {
  lines = 2;
  width = 0;
  for (i = at; i < used; i++) {
   grid_get_cell1(gl, i, &gc);
   if (width + gc.data.width > sx) {
    lines++;
    width = 0;
   }
   width += gc.data.width;
  }
 }


 line = target->sy + 1;
 first = grid_reflow_add(target, lines);


 width = 0;
 xx = 0;
 for (i = at; i < used; i++) {
  grid_get_cell1(gl, i, &gc);
  if (width + gc.data.width > sx) {
   target->linedata[line].flags |= GRID_LINE_WRAPPED;

   line++;
   width = 0;
   xx = 0;
  }
  width += gc.data.width;
  grid_set_cell(target, xx, line, &gc);
  xx++;
 }
 if (flags & GRID_LINE_WRAPPED)
  target->linedata[line].flags |= GRID_LINE_WRAPPED;


 gl->cellsize = gl->cellused = at;
 gl->flags |= GRID_LINE_WRAPPED;
 memcpy(first, gl, sizeof *first);
 grid_reflow_dead(gl);


 if (yy <= gd->hscrolled)
  gd->hscrolled += lines - 1;





 if (width < sx && (flags & GRID_LINE_WRAPPED))
  grid_reflow_join(target, gd, sx, yy, width, 1);
}
