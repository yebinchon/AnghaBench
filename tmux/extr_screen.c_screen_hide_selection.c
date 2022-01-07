
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct screen {TYPE_1__* sel; } ;
struct TYPE_2__ {int hidden; } ;



void
screen_hide_selection(struct screen *s)
{
 if (s->sel != ((void*)0))
  s->sel->hidden = 1;
}
