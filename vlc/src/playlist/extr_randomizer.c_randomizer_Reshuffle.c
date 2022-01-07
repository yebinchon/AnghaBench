
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct randomizer {TYPE_1__ items; int history; scalar_t__ next; scalar_t__ head; } ;



void
randomizer_Reshuffle(struct randomizer *r)
{

    r->head = 0;
    r->next = 0;
    r->history = r->items.size;
}
