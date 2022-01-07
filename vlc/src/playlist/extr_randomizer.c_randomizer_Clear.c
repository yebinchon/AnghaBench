
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct randomizer {scalar_t__ history; scalar_t__ next; scalar_t__ head; int items; } ;


 int vlc_vector_clear (int *) ;

void
randomizer_Clear(struct randomizer *r)
{
    vlc_vector_clear(&r->items);
    r->head = 0;
    r->next = 0;
    r->history = 0;
}
