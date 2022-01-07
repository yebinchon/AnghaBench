
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct layout_cell {int type; TYPE_1__* wp; int cells; } ;
typedef enum layout_type { ____Placeholder_layout_type } layout_type ;
struct TYPE_2__ {int * layout_cell; } ;


 int LAYOUT_WINDOWPANE ;
 int TAILQ_INIT (int *) ;
 int fatalx (char*) ;

void
layout_make_node(struct layout_cell *lc, enum layout_type type)
{
 if (type == LAYOUT_WINDOWPANE)
  fatalx("bad layout type");
 lc->type = type;

 TAILQ_INIT(&lc->cells);

 if (lc->wp != ((void*)0))
  lc->wp->layout_cell = ((void*)0);
 lc->wp = ((void*)0);
}
