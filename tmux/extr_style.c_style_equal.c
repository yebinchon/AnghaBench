
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grid_cell {scalar_t__ fg; scalar_t__ bg; int attr; } ;
struct style {scalar_t__ fill; scalar_t__ align; struct grid_cell gc; } ;


 int STYLE_ATTR_MASK ;

int
style_equal(struct style *sy1, struct style *sy2)
{
 struct grid_cell *gc1 = &sy1->gc;
 struct grid_cell *gc2 = &sy2->gc;

 if (gc1->fg != gc2->fg)
  return (0);
 if (gc1->bg != gc2->bg)
  return (0);
 if ((gc1->attr & STYLE_ATTR_MASK) != (gc2->attr & STYLE_ATTR_MASK))
  return (0);
 if (sy1->fill != sy2->fill)
  return (0);
 if (sy1->align != sy2->align)
  return (0);
 return (1);
}
