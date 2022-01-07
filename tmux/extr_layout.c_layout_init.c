
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct window {int sy; int sx; struct layout_cell* layout_root; } ;
struct layout_cell {int dummy; } ;


 struct layout_cell* layout_create_cell (int *) ;
 int layout_fix_panes (struct window*) ;
 int layout_make_leaf (struct layout_cell*,struct window_pane*) ;
 int layout_set_size (struct layout_cell*,int ,int ,int ,int ) ;

void
layout_init(struct window *w, struct window_pane *wp)
{
 struct layout_cell *lc;

 lc = w->layout_root = layout_create_cell(((void*)0));
 layout_set_size(lc, w->sx, w->sy, 0, 0);
 layout_make_leaf(lc, wp);
 layout_fix_panes(w);
}
