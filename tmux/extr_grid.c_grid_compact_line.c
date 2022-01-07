
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct grid_line {int extdsize; size_t cellsize; struct grid_cell* extddata; struct grid_cell_entry* celldata; } ;
struct grid_cell_entry {int flags; size_t offset; } ;
struct grid_cell {int dummy; } ;


 int GRID_FLAG_EXTENDED ;
 int free (struct grid_cell*) ;
 int memcpy (struct grid_cell*,struct grid_cell*,int) ;
 struct grid_cell* xreallocarray (int *,int,int) ;

__attribute__((used)) static void
grid_compact_line(struct grid_line *gl)
{
 int new_extdsize = 0;
 struct grid_cell *new_extddata;
 struct grid_cell_entry *gce;
 struct grid_cell *gc;
 u_int px, idx;

 if (gl->extdsize == 0)
  return;

 for (px = 0; px < gl->cellsize; px++) {
  gce = &gl->celldata[px];
  if (gce->flags & GRID_FLAG_EXTENDED)
   new_extdsize++;
 }

 if (new_extdsize == 0) {
  free(gl->extddata);
  gl->extddata = ((void*)0);
  gl->extdsize = 0;
  return;
 }
 new_extddata = xreallocarray(((void*)0), new_extdsize, sizeof *gl->extddata);

 idx = 0;
 for (px = 0; px < gl->cellsize; px++) {
  gce = &gl->celldata[px];
  if (gce->flags & GRID_FLAG_EXTENDED) {
   gc = &gl->extddata[gce->offset];
   memcpy(&new_extddata[idx], gc, sizeof *gc);
   gce->offset = idx++;
  }
 }

 free(gl->extddata);
 gl->extddata = new_extddata;
 gl->extdsize = new_extdsize;
}
