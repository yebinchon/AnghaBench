
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int * data; } ;
struct randomizer {size_t next; size_t head; size_t history; TYPE_1__ items; } ;


 int memmove (int *,int *,size_t) ;

__attribute__((used)) static void
randomizer_RemoveAt(struct randomizer *r, size_t index)
{
    if (index < r->next)
        r->next--;

    if (index < r->head)
    {

        memmove(&r->items.data[index],
                &r->items.data[index + 1],
                (r->head - index - 1) * sizeof(*r->items.data));
        r->head--;
        index = r->head;
    }

    if (index < r->history)
    {

        r->items.data[index] = r->items.data[r->history - 1];
        index = r->history - 1;
        r->history--;
    }

    if (index < r->items.size - 1)
    {

        memmove(&r->items.data[index],
                &r->items.data[index + 1],
                (r->items.size - index - 1) * sizeof(*r->items.data));
    }

    r->items.size--;
}
