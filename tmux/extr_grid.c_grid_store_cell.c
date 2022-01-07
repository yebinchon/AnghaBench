
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int fg; int bg; int data; int attr; } ;
struct grid_cell_entry {int flags; TYPE_1__ data; } ;
struct grid_cell {int flags; int fg; int bg; int attr; } ;


 int COLOUR_FLAG_256 ;
 int GRID_FLAG_BG256 ;
 int GRID_FLAG_CLEARED ;
 int GRID_FLAG_FG256 ;

__attribute__((used)) static void
grid_store_cell(struct grid_cell_entry *gce, const struct grid_cell *gc,
    u_char c)
{
 gce->flags = (gc->flags & ~GRID_FLAG_CLEARED);

 gce->data.fg = gc->fg & 0xff;
 if (gc->fg & COLOUR_FLAG_256)
  gce->flags |= GRID_FLAG_FG256;

 gce->data.bg = gc->bg & 0xff;
 if (gc->bg & COLOUR_FLAG_256)
  gce->flags |= GRID_FLAG_BG256;

 gce->data.attr = gc->attr;
 gce->data.data = c;
}
