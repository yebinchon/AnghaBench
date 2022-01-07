
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; } ;
struct randomizer {size_t head; size_t history; int xsubi; TYPE_1__ items; } ;


 int assert (int) ;
 size_t nrand48 (int ) ;
 int swap_items (struct randomizer*,size_t,size_t) ;

__attribute__((used)) static inline void
randomizer_DetermineOne_(struct randomizer *r, size_t avoid_last_n)
{
    assert(r->head < r->items.size);
    assert(r->items.size - r->head > avoid_last_n);
    size_t range_len = r->items.size - r->head - avoid_last_n;
    size_t selected = r->head + (nrand48(r->xsubi) % range_len);
    swap_items(r, r->head, selected);

    if (r->head == r->history)
        r->history++;
    r->head++;
}
