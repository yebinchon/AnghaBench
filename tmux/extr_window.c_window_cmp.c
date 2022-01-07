
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int id; } ;



int
window_cmp(struct window *w1, struct window *w2)
{
 return (w1->id - w2->id);
}
