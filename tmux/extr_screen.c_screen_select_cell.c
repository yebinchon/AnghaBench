
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct screen {TYPE_1__* sel; } ;
struct grid_cell {int attr; int flags; int data; } ;
struct TYPE_2__ {int cell; scalar_t__ hidden; } ;


 int GRID_ATTR_CHARSET ;
 int memcpy (struct grid_cell*,int *,int) ;
 int utf8_copy (int *,int *) ;

void
screen_select_cell(struct screen *s, struct grid_cell *dst,
    const struct grid_cell *src)
{
 if (s->sel == ((void*)0) || s->sel->hidden)
  return;

 memcpy(dst, &s->sel->cell, sizeof *dst);

 utf8_copy(&dst->data, &src->data);
 dst->attr = dst->attr & ~GRID_ATTR_CHARSET;
 dst->attr |= src->attr & GRID_ATTR_CHARSET;
 dst->flags = src->flags;
}
