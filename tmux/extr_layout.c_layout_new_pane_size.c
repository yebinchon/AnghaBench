
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window {int dummy; } ;
struct layout_cell {int sx; int sy; } ;
typedef enum layout_type { ____Placeholder_layout_type } layout_type ;


 int LAYOUT_LEFTRIGHT ;
 int PANE_MINIMUM ;
 int layout_resize_check (struct window*,struct layout_cell*,int) ;

__attribute__((used)) static u_int
layout_new_pane_size(struct window *w, u_int previous, struct layout_cell *lc,
    enum layout_type type, u_int size, u_int count_left, u_int size_left)
{
 u_int new_size, min, max, available;


 if (count_left == 1)
  return (size_left);


 available = layout_resize_check(w, lc, type);





 min = (PANE_MINIMUM + 1) * (count_left - 1);
 if (type == LAYOUT_LEFTRIGHT) {
  if (lc->sx - available > min)
   min = lc->sx - available;
  new_size = (lc->sx * size) / previous;
 } else {
  if (lc->sy - available > min)
   min = lc->sy - available;
  new_size = (lc->sy * size) / previous;
 }


 max = size_left - min;
 if (new_size > max)
  new_size = max;
 if (new_size < PANE_MINIMUM)
  new_size = PANE_MINIMUM;
 return (new_size);
}
