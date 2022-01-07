
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layout_cell {scalar_t__ type; int cells; } ;


 scalar_t__ LAYOUT_WINDOWPANE ;
 struct layout_cell* TAILQ_LAST (int *,int ) ;
 int layout_cells ;

__attribute__((used)) static struct layout_cell *
layout_find_bottomright(struct layout_cell *lc)
{
 if (lc->type == LAYOUT_WINDOWPANE)
  return (lc);
 lc = TAILQ_LAST(&lc->cells, layout_cells);
 return (layout_find_bottomright(lc));
}
