
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int order; } ;
typedef TYPE_1__ vlc_playlist_t ;




 int vlc_assert_unreachable () ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int vlc_playlist_NormalOrderHasNext (TYPE_1__*) ;
 int vlc_playlist_RandomOrderHasNext (TYPE_1__*) ;

bool
vlc_playlist_ComputeHasNext(vlc_playlist_t *playlist)
{
    vlc_playlist_AssertLocked(playlist);
    switch (playlist->order)
    {
        case 129:
            return vlc_playlist_NormalOrderHasNext(playlist);
        case 128:
            return vlc_playlist_RandomOrderHasNext(playlist);
        default:
            vlc_assert_unreachable();
    }
}
