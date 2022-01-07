
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_item_t ;
struct randomizer {int items; } ;


 int randomizer_RemoveOne (struct randomizer*,int * const) ;
 int vlc_vector_autoshrink (int *) ;

void
randomizer_Remove(struct randomizer *r, vlc_playlist_item_t *const items[],
                  size_t count)
{
    for (size_t i = 0; i < count; ++i)
        randomizer_RemoveOne(r, items[i]);

    vlc_vector_autoshrink(&r->items);
}
