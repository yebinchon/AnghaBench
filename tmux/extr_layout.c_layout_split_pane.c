
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct window_pane {TYPE_1__* window; struct layout_cell* layout_cell; } ;
struct layout_cell {int sx; int sy; int xoff; int yoff; int type; int cells; struct layout_cell* parent; } ;
typedef enum layout_type { ____Placeholder_layout_type } layout_type ;
struct TYPE_5__ {struct layout_cell* layout_root; int options; } ;




 int PANE_MINIMUM ;
 int SPAWN_BEFORE ;
 int SPAWN_FULLSIZE ;
 int TAILQ_INSERT_AFTER (int *,struct layout_cell*,struct layout_cell*,int ) ;
 int TAILQ_INSERT_BEFORE (struct layout_cell*,struct layout_cell*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct layout_cell*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct layout_cell*,int ) ;
 int TAILQ_REPLACE (int *,struct layout_cell*,struct layout_cell*,int ) ;
 int entry ;
 int fatalx (char*) ;
 int layout_add_border (TYPE_1__*,struct layout_cell*,int) ;
 struct layout_cell* layout_create_cell (struct layout_cell*) ;
 int layout_fix_offsets (TYPE_1__*) ;
 int layout_make_leaf (struct layout_cell*,struct window_pane*) ;
 int layout_make_node (struct layout_cell*,int) ;
 int layout_resize_child_cells (TYPE_1__*,struct layout_cell*) ;
 int layout_set_size (struct layout_cell*,int,int,int,int) ;
 int layout_set_size_check (TYPE_1__*,struct layout_cell*,int,int) ;
 int options_get_number (int ,char*) ;

struct layout_cell *
layout_split_pane(struct window_pane *wp, enum layout_type type, int size,
    int flags)
{
 struct layout_cell *lc, *lcparent, *lcnew, *lc1, *lc2;
 u_int sx, sy, xoff, yoff, size1, size2, minimum;
 u_int new_size, saved_size, resize_first = 0;
 int full_size = (flags & SPAWN_FULLSIZE), status;





 if (full_size)
  lc = wp->window->layout_root;
 else
  lc = wp->layout_cell;
 status = options_get_number(wp->window->options, "pane-border-status");


 sx = lc->sx;
 sy = lc->sy;
 xoff = lc->xoff;
 yoff = lc->yoff;


 switch (type) {
 case 129:
  if (sx < PANE_MINIMUM * 2 + 1)
   return (((void*)0));
  break;
 case 128:
  if (layout_add_border(wp->window, lc, status))
   minimum = PANE_MINIMUM * 2 + 2;
  else
   minimum = PANE_MINIMUM * 2 + 1;
  if (sy < minimum)
   return (((void*)0));
  break;
 default:
  fatalx("bad layout type");
 }





 if (type == 129)
  saved_size = sx;
 else
  saved_size = sy;
 if (size < 0)
  size2 = ((saved_size + 1) / 2) - 1;
 else if (flags & SPAWN_BEFORE)
  size2 = saved_size - size - 1;
 else
  size2 = size;
 if (size2 < PANE_MINIMUM)
  size2 = PANE_MINIMUM;
 else if (size2 > saved_size - 2)
  size2 = saved_size - 2;
 size1 = saved_size - 1 - size2;


 if (flags & SPAWN_BEFORE)
  new_size = size2;
 else
  new_size = size1;


 if (full_size && !layout_set_size_check(wp->window, lc, type, new_size))
  return (((void*)0));

 if (lc->parent != ((void*)0) && lc->parent->type == type) {




  lcparent = lc->parent;
  lcnew = layout_create_cell(lcparent);
  if (flags & SPAWN_BEFORE)
   TAILQ_INSERT_BEFORE(lc, lcnew, entry);
  else
   TAILQ_INSERT_AFTER(&lcparent->cells, lc, lcnew, entry);
 } else if (full_size && lc->parent == ((void*)0) && lc->type == type) {






  if (lc->type == 129) {
   lc->sx = new_size;
   layout_resize_child_cells(wp->window, lc);
   lc->sx = saved_size;
  } else if (lc->type == 128) {
   lc->sy = new_size;
   layout_resize_child_cells(wp->window, lc);
   lc->sy = saved_size;
  }
  resize_first = 1;


  lcnew = layout_create_cell(lc);
  size = saved_size - 1 - new_size;
  if (lc->type == 129)
   layout_set_size(lcnew, size, sy, 0, 0);
  else if (lc->type == 128)
   layout_set_size(lcnew, sx, size, 0, 0);
  if (flags & SPAWN_BEFORE)
   TAILQ_INSERT_HEAD(&lc->cells, lcnew, entry);
  else
   TAILQ_INSERT_TAIL(&lc->cells, lcnew, entry);
 } else {





  lcparent = layout_create_cell(lc->parent);
  layout_make_node(lcparent, type);
  layout_set_size(lcparent, sx, sy, xoff, yoff);
  if (lc->parent == ((void*)0))
   wp->window->layout_root = lcparent;
  else
   TAILQ_REPLACE(&lc->parent->cells, lc, lcparent, entry);


  lc->parent = lcparent;
  TAILQ_INSERT_HEAD(&lcparent->cells, lc, entry);


  lcnew = layout_create_cell(lcparent);
  if (flags & SPAWN_BEFORE)
   TAILQ_INSERT_HEAD(&lcparent->cells, lcnew, entry);
  else
   TAILQ_INSERT_TAIL(&lcparent->cells, lcnew, entry);
 }
 if (flags & SPAWN_BEFORE) {
  lc1 = lcnew;
  lc2 = lc;
 } else {
  lc1 = lc;
  lc2 = lcnew;
 }





 if (!resize_first && type == 129) {
  layout_set_size(lc1, size1, sy, xoff, yoff);
  layout_set_size(lc2, size2, sy, xoff + lc1->sx + 1, yoff);
 } else if (!resize_first && type == 128) {
  layout_set_size(lc1, sx, size1, xoff, yoff);
  layout_set_size(lc2, sx, size2, xoff, yoff + lc1->sy + 1);
 }
 if (full_size) {
  if (!resize_first)
   layout_resize_child_cells(wp->window, lc);
  layout_fix_offsets(wp->window);
 } else
  layout_make_leaf(lc, wp);

 return (lcnew);
}
