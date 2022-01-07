
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct window {int lastlayout; } ;
struct TYPE_3__ {int (* arrange ) (struct window*) ;} ;


 TYPE_1__* layout_sets ;
 int nitems (TYPE_1__*) ;
 int stub1 (struct window*) ;

u_int
layout_set_previous(struct window *w)
{
 u_int layout;

 if (w->lastlayout == -1)
  layout = nitems(layout_sets) - 1;
 else {
  layout = w->lastlayout;
  if (layout == 0)
   layout = nitems(layout_sets) - 1;
  else
   layout--;
 }

 if (layout_sets[layout].arrange != ((void*)0))
  layout_sets[layout].arrange(w);
 w->lastlayout = layout;
 return (layout);
}
