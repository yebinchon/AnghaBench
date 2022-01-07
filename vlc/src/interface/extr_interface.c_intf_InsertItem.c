
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int libvlc_int_t ;
typedef int input_item_t ;


 scalar_t__ VLC_SUCCESS ;
 scalar_t__ input_item_AddOptions (int *,unsigned int,char const* const*,unsigned int) ;
 int * input_item_New (char const*,int *) ;
 int input_item_Release (int *) ;
 int * libvlc_GetMainPlaylist (int *) ;
 scalar_t__ unlikely (int ) ;
 int vlc_playlist_InsertOne (int *,int ,int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

int intf_InsertItem(libvlc_int_t *libvlc, const char *mrl, unsigned optc,
                    const char *const *optv, unsigned flags)
{
    input_item_t *item = input_item_New(mrl, ((void*)0));

    if (unlikely(item == ((void*)0)))
        return -1;

    int ret = -1;

    if (input_item_AddOptions(item, optc, optv, flags) == VLC_SUCCESS)
    {
        vlc_playlist_t *playlist = libvlc_GetMainPlaylist(libvlc);
        if (playlist)
        {
            vlc_playlist_Lock(playlist);
            ret = vlc_playlist_InsertOne(playlist, 0, item);
            vlc_playlist_Unlock(playlist);
        }
    }
    input_item_Release(item);
    return ret;
}
