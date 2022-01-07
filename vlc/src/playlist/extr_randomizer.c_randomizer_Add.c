
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_item_t ;
struct randomizer {scalar_t__ history; scalar_t__ next; int items; } ;


 int vlc_vector_insert_all (int *,scalar_t__,int **,size_t) ;

bool
randomizer_Add(struct randomizer *r, vlc_playlist_item_t *items[], size_t count)
{
    if (!vlc_vector_insert_all(&r->items, r->history, items, count))
        return 0;

    if (r->next > r->history)
        r->next += count;
    r->history += count;
    return 1;
}
