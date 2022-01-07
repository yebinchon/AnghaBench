
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {struct layout_cell* layout_cell; } ;
struct layout_cell {struct window_pane* wp; int cells; int type; } ;


 int LAYOUT_WINDOWPANE ;
 int TAILQ_INIT (int *) ;

void
layout_make_leaf(struct layout_cell *lc, struct window_pane *wp)
{
 lc->type = LAYOUT_WINDOWPANE;

 TAILQ_INIT(&lc->cells);

 wp->layout_cell = lc;
 lc->wp = wp;
}
