
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_playlist_item_t ;
struct TYPE_2__ {scalar_t__ size; } ;
struct randomizer {scalar_t__ next; scalar_t__ head; TYPE_1__ items; } ;


 int assert (int ) ;
 int randomizer_HasNext (struct randomizer*) ;
 int * randomizer_PeekNext (struct randomizer*) ;

vlc_playlist_item_t *
randomizer_Next(struct randomizer *r)
{
    assert(randomizer_HasNext(r));
    vlc_playlist_item_t *item = randomizer_PeekNext(r);
    r->next++;
    if (r->next == r->items.size && r->next != r->head)
        r->next = 0;
    return item;
}
