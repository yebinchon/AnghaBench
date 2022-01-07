
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_item_t ;
struct randomizer {int dummy; } ;
typedef int ssize_t ;


 int assert (int) ;
 int randomizer_IndexOf (struct randomizer*,int const*) ;
 int randomizer_SelectIndex (struct randomizer*,size_t) ;

void
randomizer_Select(struct randomizer *r, const vlc_playlist_item_t *item)
{
    ssize_t index = randomizer_IndexOf(r, item);
    assert(index != -1);
    randomizer_SelectIndex(r, (size_t) index);
}
