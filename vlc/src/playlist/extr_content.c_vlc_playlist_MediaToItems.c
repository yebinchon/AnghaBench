
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int idgen; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int uint64_t ;
typedef int input_item_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 scalar_t__ unlikely (int) ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;
 int * vlc_playlist_item_New (int * const,int ) ;
 int vlc_playlist_item_Release (int *) ;

__attribute__((used)) static int
vlc_playlist_MediaToItems(vlc_playlist_t *playlist, input_item_t *const media[],
                          size_t count, vlc_playlist_item_t *items[])
{
    vlc_playlist_AssertLocked(playlist);
    size_t i;
    for (i = 0; i < count; ++i)
    {
        uint64_t id = playlist->idgen++;
        items[i] = vlc_playlist_item_New(media[i], id);
        if (unlikely(!items[i]))
            break;
    }
    if (i < count)
    {

        while (i)
            vlc_playlist_item_Release(items[--i]);
        return VLC_ENOMEM;
    }
    return VLC_SUCCESS;
}
