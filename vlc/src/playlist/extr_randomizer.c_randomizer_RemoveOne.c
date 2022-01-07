
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_item_t ;
struct randomizer {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int assert (int) ;
 scalar_t__ randomizer_IndexOf (struct randomizer*,int const*) ;
 int randomizer_RemoveAt (struct randomizer*,scalar_t__) ;

__attribute__((used)) static void
randomizer_RemoveOne(struct randomizer *r, const vlc_playlist_item_t *item)
{
    ssize_t index = randomizer_IndexOf(r, item);
    assert(index >= 0);
    randomizer_RemoveAt(r, index);
}
