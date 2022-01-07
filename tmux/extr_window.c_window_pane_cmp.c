
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int id; } ;



int
window_pane_cmp(struct window_pane *wp1, struct window_pane *wp2)
{
 return (wp1->id - wp2->id);
}
