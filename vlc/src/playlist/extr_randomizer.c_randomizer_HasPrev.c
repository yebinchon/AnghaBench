
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct randomizer {int next; int history; TYPE_1__ items; int loop; } ;



bool
randomizer_HasPrev(struct randomizer *r)
{
    if (!r->loop)

        return r->next > 1;

    if (!r->items.size)

        return 0;



    return (r->next + r->items.size - r->history) % r->items.size != 1;
}
