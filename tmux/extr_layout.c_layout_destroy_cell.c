
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int dummy; } ;
struct layout_cell {scalar_t__ type; int cells; struct layout_cell* parent; scalar_t__ yoff; scalar_t__ xoff; scalar_t__ sy; scalar_t__ sx; } ;


 scalar_t__ LAYOUT_LEFTRIGHT ;
 struct layout_cell* TAILQ_FIRST (int *) ;
 struct layout_cell* TAILQ_NEXT (struct layout_cell*,int ) ;
 struct layout_cell* TAILQ_PREV (struct layout_cell*,int ,int ) ;
 int TAILQ_REMOVE (int *,struct layout_cell*,int ) ;
 int TAILQ_REPLACE (int *,struct layout_cell*,struct layout_cell*,int ) ;
 int entry ;
 int layout_cells ;
 int layout_free_cell (struct layout_cell*) ;
 int layout_resize_adjust (struct window*,struct layout_cell*,scalar_t__,scalar_t__) ;

void
layout_destroy_cell(struct window *w, struct layout_cell *lc,
    struct layout_cell **lcroot)
{
 struct layout_cell *lcother, *lcparent;





 lcparent = lc->parent;
 if (lcparent == ((void*)0)) {
  layout_free_cell(lc);
  *lcroot = ((void*)0);
  return;
 }


 if (lc == TAILQ_FIRST(&lcparent->cells))
  lcother = TAILQ_NEXT(lc, entry);
 else
  lcother = TAILQ_PREV(lc, layout_cells, entry);
 if (lcother != ((void*)0) && lcparent->type == LAYOUT_LEFTRIGHT)
  layout_resize_adjust(w, lcother, lcparent->type, lc->sx + 1);
 else if (lcother != ((void*)0))
  layout_resize_adjust(w, lcother, lcparent->type, lc->sy + 1);


 TAILQ_REMOVE(&lcparent->cells, lc, entry);
 layout_free_cell(lc);





 lc = TAILQ_FIRST(&lcparent->cells);
 if (TAILQ_NEXT(lc, entry) == ((void*)0)) {
  TAILQ_REMOVE(&lcparent->cells, lc, entry);

  lc->parent = lcparent->parent;
  if (lc->parent == ((void*)0)) {
   lc->xoff = 0; lc->yoff = 0;
   *lcroot = lc;
  } else
   TAILQ_REPLACE(&lc->parent->cells, lcparent, lc, entry);

  layout_free_cell(lcparent);
 }
}
