
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ x; scalar_t__ y; scalar_t__ cx; scalar_t__ cy; } ;
typedef TYPE_1__ myrect ;



int is_contained_by(myrect* r1, myrect* r2)
{
  if (r1->x >= r2->x &&
      r1->y >= r2->y &&
      r1->x + r1->cx <= r2->x + r2->cx &&
      r1->y + r1->cy <= r2->y + r2->cy)
    return 1;
  else
    return 0;
}
