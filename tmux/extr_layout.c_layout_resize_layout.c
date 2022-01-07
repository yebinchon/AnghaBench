
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int dummy; } ;
struct layout_cell {int dummy; } ;
typedef enum layout_type { ____Placeholder_layout_type } layout_type ;


 int layout_fix_offsets (struct window*) ;
 int layout_fix_panes (struct window*) ;
 int layout_resize_pane_grow (struct window*,struct layout_cell*,int,int,int) ;
 int layout_resize_pane_shrink (struct window*,struct layout_cell*,int,int) ;
 int notify_window (char*,struct window*) ;

void
layout_resize_layout(struct window *w, struct layout_cell *lc,
    enum layout_type type, int change, int opposite)
{
 int needed, size;


 needed = change;
 while (needed != 0) {
  if (change > 0) {
   size = layout_resize_pane_grow(w, lc, type, needed,
       opposite);
   needed -= size;
  } else {
   size = layout_resize_pane_shrink(w, lc, type, needed);
   needed += size;
  }

  if (size == 0)
   break;
 }


 layout_fix_offsets(w);
 layout_fix_panes(w);
 notify_window("window-layout-changed", w);
}
