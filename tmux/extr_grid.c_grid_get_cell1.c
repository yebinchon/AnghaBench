
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct grid_line {size_t extdsize; int * extddata; struct grid_cell_entry* celldata; } ;
struct TYPE_2__ {int data; int bg; int fg; int attr; } ;
struct grid_cell_entry {int flags; size_t offset; TYPE_1__ data; } ;
struct grid_cell {int flags; int data; scalar_t__ us; int bg; int fg; int attr; } ;


 int COLOUR_FLAG_256 ;
 int GRID_FLAG_BG256 ;
 int GRID_FLAG_EXTENDED ;
 int GRID_FLAG_FG256 ;
 int grid_default_cell ;
 int memcpy (struct grid_cell*,int *,int) ;
 int utf8_set (int *,int ) ;

__attribute__((used)) static void
grid_get_cell1(struct grid_line *gl, u_int px, struct grid_cell *gc)
{
 struct grid_cell_entry *gce = &gl->celldata[px];

 if (gce->flags & GRID_FLAG_EXTENDED) {
  if (gce->offset >= gl->extdsize)
   memcpy(gc, &grid_default_cell, sizeof *gc);
  else
   memcpy(gc, &gl->extddata[gce->offset], sizeof *gc);
  return;
 }

 gc->flags = gce->flags & ~(GRID_FLAG_FG256|GRID_FLAG_BG256);
 gc->attr = gce->data.attr;
 gc->fg = gce->data.fg;
 if (gce->flags & GRID_FLAG_FG256)
  gc->fg |= COLOUR_FLAG_256;
 gc->bg = gce->data.bg;
 if (gce->flags & GRID_FLAG_BG256)
  gc->bg |= COLOUR_FLAG_256;
 gc->us = 0;
 utf8_set(&gc->data, gce->data.data);
}
