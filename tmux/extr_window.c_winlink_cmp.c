
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int idx; } ;



int
winlink_cmp(struct winlink *wl1, struct winlink *wl2)
{
 return (wl1->idx - wl2->idx);
}
