
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layout_cell {int * wp; void* yoff; void* xoff; void* sy; void* sx; int cells; struct layout_cell* parent; int type; } ;


 int LAYOUT_WINDOWPANE ;
 int TAILQ_INIT (int *) ;
 void* UINT_MAX ;
 struct layout_cell* xmalloc (int) ;

struct layout_cell *
layout_create_cell(struct layout_cell *lcparent)
{
 struct layout_cell *lc;

 lc = xmalloc(sizeof *lc);
 lc->type = LAYOUT_WINDOWPANE;
 lc->parent = lcparent;

 TAILQ_INIT(&lc->cells);

 lc->sx = UINT_MAX;
 lc->sy = UINT_MAX;

 lc->xoff = UINT_MAX;
 lc->yoff = UINT_MAX;

 lc->wp = ((void*)0);

 return (lc);
}
