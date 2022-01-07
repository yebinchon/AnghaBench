
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_playlist_item_t ;
struct TYPE_2__ {int size; int ** data; } ;
struct randomizer {int next; TYPE_1__ items; } ;


 int assert (int ) ;
 int randomizer_HasPrev (struct randomizer*) ;

vlc_playlist_item_t *
randomizer_PeekPrev(struct randomizer *r)
{
    assert(randomizer_HasPrev(r));
    size_t index = (r->next + r->items.size - 2) % r->items.size;
    return r->items.data[index];
}
