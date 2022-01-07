
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct randomizer {TYPE_1__ items; scalar_t__ history; scalar_t__ next; scalar_t__ head; } ;


 size_t NOT_SAME_BEFORE ;
 int assert (int) ;
 int randomizer_DetermineOne_ (struct randomizer*,int ) ;

__attribute__((used)) static void
randomizer_AutoReshuffle(struct randomizer *r)
{
    assert(r->items.size > 0);
    r->head = 0;
    r->next = 0;
    r->history = 0;
    size_t avoid_last_n = NOT_SAME_BEFORE;
    if (avoid_last_n > r->items.size - 1)

        avoid_last_n = r->items.size - 1;
    while (avoid_last_n)
        randomizer_DetermineOne_(r, avoid_last_n--);
}
