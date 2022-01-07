
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int randomizer; } ;
typedef TYPE_1__ vlc_playlist_t ;


 int randomizer_HasPrev (int *) ;

__attribute__((used)) static inline bool
vlc_playlist_RandomOrderHasPrev(vlc_playlist_t *playlist)
{
    return randomizer_HasPrev(&playlist->randomizer);
}
