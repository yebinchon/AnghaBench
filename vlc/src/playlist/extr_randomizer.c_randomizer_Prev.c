
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_playlist_item_t ;
struct TYPE_2__ {int size; } ;
struct randomizer {int next; TYPE_1__ items; } ;


 int assert (int ) ;
 int randomizer_HasPrev (struct randomizer*) ;
 int * randomizer_PeekPrev (struct randomizer*) ;

vlc_playlist_item_t *
randomizer_Prev(struct randomizer *r)
{
    assert(randomizer_HasPrev(r));
    vlc_playlist_item_t *item = randomizer_PeekPrev(r);
    r->next = r->next ? r->next - 1 : r->items.size - 1;
    return item;
}
