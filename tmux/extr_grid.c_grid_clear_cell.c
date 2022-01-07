
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct grid_line {struct grid_cell_entry* extddata; int flags; struct grid_cell_entry* celldata; } ;
struct TYPE_2__ {size_t bg; } ;
struct grid_cell_entry {size_t offset; size_t bg; TYPE_1__ data; int flags; } ;
struct grid_cell {size_t offset; size_t bg; TYPE_1__ data; int flags; } ;
struct grid {struct grid_line* linedata; } ;


 size_t COLOUR_FLAG_256 ;
 size_t COLOUR_FLAG_RGB ;
 int GRID_FLAG_BG256 ;
 int GRID_LINE_EXTENDED ;
 int grid_cleared_cell ;
 int grid_cleared_entry ;
 int grid_get_extended_cell (struct grid_line*,struct grid_cell_entry*,int ) ;
 int memcpy (struct grid_cell_entry*,int *,int) ;

__attribute__((used)) static void
grid_clear_cell(struct grid *gd, u_int px, u_int py, u_int bg)
{
 struct grid_line *gl = &gd->linedata[py];
 struct grid_cell_entry *gce = &gl->celldata[px];
 struct grid_cell *gc;

 memcpy(gce, &grid_cleared_entry, sizeof *gce);
 if (bg != 8) {
  if (bg & COLOUR_FLAG_RGB) {
   grid_get_extended_cell(gl, gce, gce->flags);
   gl->flags |= GRID_LINE_EXTENDED;

   gc = &gl->extddata[gce->offset];
   memcpy(gc, &grid_cleared_cell, sizeof *gc);
   gc->bg = bg;
  } else {
   if (bg & COLOUR_FLAG_256)
    gce->flags |= GRID_FLAG_BG256;
   gce->data.bg = bg;
  }
 }
}
