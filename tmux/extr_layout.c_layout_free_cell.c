
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct layout_cell {int type; TYPE_1__* wp; int cells; } ;
struct TYPE_2__ {int * layout_cell; } ;





 int TAILQ_EMPTY (int *) ;
 struct layout_cell* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct layout_cell*,int ) ;
 int entry ;
 int free (struct layout_cell*) ;

void
layout_free_cell(struct layout_cell *lc)
{
 struct layout_cell *lcchild;

 switch (lc->type) {
 case 130:
 case 129:
  while (!TAILQ_EMPTY(&lc->cells)) {
   lcchild = TAILQ_FIRST(&lc->cells);
   TAILQ_REMOVE(&lc->cells, lcchild, entry);
   layout_free_cell(lcchild);
  }
  break;
 case 128:
  if (lc->wp != ((void*)0))
   lc->wp->layout_cell = ((void*)0);
  break;
 }

 free(lc);
}
