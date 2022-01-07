
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct randomizer {scalar_t__ next; TYPE_1__ items; scalar_t__ loop; } ;



bool
randomizer_HasNext(struct randomizer *r)
{
    return r->loop || r->next < r->items.size;
}
