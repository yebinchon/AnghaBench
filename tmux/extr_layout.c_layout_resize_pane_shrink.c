
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct window {int dummy; } ;
struct layout_cell {int dummy; } ;
typedef enum layout_type { ____Placeholder_layout_type } layout_type ;


 struct layout_cell* TAILQ_NEXT (struct layout_cell*,int ) ;
 struct layout_cell* TAILQ_PREV (struct layout_cell*,int ,int ) ;
 int entry ;
 int layout_cells ;
 int layout_resize_adjust (struct window*,struct layout_cell*,int,int) ;
 int layout_resize_check (struct window*,struct layout_cell*,int) ;

__attribute__((used)) static int
layout_resize_pane_shrink(struct window *w, struct layout_cell *lc,
    enum layout_type type, int needed)
{
 struct layout_cell *lcadd, *lcremove;
 u_int size;


 lcremove = lc;
 do {
  size = layout_resize_check(w, lcremove, type);
  if (size != 0)
   break;
  lcremove = TAILQ_PREV(lcremove, layout_cells, entry);
 } while (lcremove != ((void*)0));
 if (lcremove == ((void*)0))
  return (0);


 lcadd = TAILQ_NEXT(lc, entry);
 if (lcadd == ((void*)0))
  return (0);


 if (size > (u_int) -needed)
  size = -needed;
 layout_resize_adjust(w, lcadd, type, size);
 layout_resize_adjust(w, lcremove, type, -size);
 return (size);
}
