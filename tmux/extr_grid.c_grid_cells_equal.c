
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ width; scalar_t__ size; int data; } ;
struct grid_cell {scalar_t__ fg; scalar_t__ bg; scalar_t__ attr; scalar_t__ flags; TYPE_1__ data; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
grid_cells_equal(const struct grid_cell *gca, const struct grid_cell *gcb)
{
 if (gca->fg != gcb->fg || gca->bg != gcb->bg)
  return (0);
 if (gca->attr != gcb->attr || gca->flags != gcb->flags)
  return (0);
 if (gca->data.width != gcb->data.width)
  return (0);
 if (gca->data.size != gcb->data.size)
  return (0);
 return (memcmp(gca->data.data, gcb->data.data, gca->data.size) == 0);
}
