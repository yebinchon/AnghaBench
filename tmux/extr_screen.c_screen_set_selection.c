
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int ;
struct screen {TYPE_1__* sel; } ;
struct grid_cell {int dummy; } ;
struct TYPE_2__ {int modekeys; void* ey; void* ex; void* sy; void* sx; void* rectangle; scalar_t__ hidden; int cell; } ;


 int memcpy (int *,struct grid_cell*,int) ;
 TYPE_1__* xcalloc (int,int) ;

void
screen_set_selection(struct screen *s, u_int sx, u_int sy,
    u_int ex, u_int ey, u_int rectangle, int modekeys, struct grid_cell *gc)
{
 if (s->sel == ((void*)0))
  s->sel = xcalloc(1, sizeof *s->sel);

 memcpy(&s->sel->cell, gc, sizeof s->sel->cell);
 s->sel->hidden = 0;
 s->sel->rectangle = rectangle;
 s->sel->modekeys = modekeys;

 s->sel->sx = sx;
 s->sel->sy = sy;
 s->sel->ex = ex;
 s->sel->ey = ey;
}
