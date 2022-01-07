
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_playlist_item_t ;
struct TYPE_2__ {scalar_t__ size; int ** data; } ;
struct randomizer {scalar_t__ next; scalar_t__ history; scalar_t__ head; TYPE_1__ items; int loop; } ;


 int assert (int ) ;
 int randomizer_AutoReshuffle (struct randomizer*) ;
 int randomizer_DetermineOne (struct randomizer*) ;
 int randomizer_HasNext (struct randomizer*) ;

vlc_playlist_item_t *
randomizer_PeekNext(struct randomizer *r)
{
    assert(randomizer_HasNext(r));

    if (r->next == r->items.size && r->next == r->history)
    {
        assert(r->loop);
        randomizer_AutoReshuffle(r);
    }

    if (r->next == r->head)

        randomizer_DetermineOne(r);

    return r->items.data[r->next];
}
