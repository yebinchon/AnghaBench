
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {struct layout_cell* layout_root; } ;
struct layout_cell {scalar_t__ yoff; scalar_t__ xoff; } ;


 int layout_fix_offsets1 (struct layout_cell*) ;

void
layout_fix_offsets(struct window *w)
{
 struct layout_cell *lc = w->layout_root;

 lc->xoff = 0;
 lc->yoff = 0;

 layout_fix_offsets1(lc);
}
