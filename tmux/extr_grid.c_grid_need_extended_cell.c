
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grid_cell_entry {int flags; } ;
struct TYPE_2__ {int size; int width; } ;
struct grid_cell {int attr; int fg; int bg; scalar_t__ us; TYPE_1__ data; } ;


 int COLOUR_FLAG_RGB ;
 int GRID_FLAG_EXTENDED ;

__attribute__((used)) static int
grid_need_extended_cell(const struct grid_cell_entry *gce,
    const struct grid_cell *gc)
{
 if (gce->flags & GRID_FLAG_EXTENDED)
  return (1);
 if (gc->attr > 0xff)
  return (1);
 if (gc->data.size != 1 || gc->data.width != 1)
  return (1);
 if ((gc->fg & COLOUR_FLAG_RGB) || (gc->bg & COLOUR_FLAG_RGB))
  return (1);
 if (gc->us != 0)
  return (1);
 return (0);
}
