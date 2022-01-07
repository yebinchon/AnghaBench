
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int randomizer; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int ssize_t ;


 int assert (int) ;
 int * randomizer_PeekPrev (int *) ;
 int vlc_playlist_IndexOf (TYPE_1__*,int *) ;

__attribute__((used)) static inline size_t
vlc_playlist_RandomOrderGetPrevIndex(vlc_playlist_t *playlist)
{
    vlc_playlist_item_t *prev = randomizer_PeekPrev(&playlist->randomizer);
    assert(prev);
    ssize_t index = vlc_playlist_IndexOf(playlist, prev);
    assert(index != -1);
    return (size_t) index;
}
