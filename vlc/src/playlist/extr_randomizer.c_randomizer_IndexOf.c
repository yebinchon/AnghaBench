
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_item_t ;
struct randomizer {int items; } ;
typedef int ssize_t ;


 int vlc_vector_index_of (int *,int const*,int *) ;

__attribute__((used)) static inline ssize_t
randomizer_IndexOf(struct randomizer *r, const vlc_playlist_item_t *item)
{
    ssize_t index;
    vlc_vector_index_of(&r->items, item, &index);
    return index;
}
