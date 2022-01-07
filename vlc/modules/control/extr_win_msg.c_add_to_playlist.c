
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int intf_thread_t ;
typedef int input_item_t ;


 int VLC_INPUT_OPTION_TRUSTED ;
 int input_item_AddOptions (int *,int,char const* const*,int ) ;
 int * input_item_New (char const*,int *) ;
 int input_item_Release (int *) ;
 int * vlc_intf_GetMainPlaylist (int *) ;
 int vlc_playlist_AppendOne (int *,int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Start (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static void add_to_playlist(intf_thread_t *intf, const char *uri,
                            bool play_now, int options_count,
                            const char *const *options)
{
    vlc_playlist_t *playlist = vlc_intf_GetMainPlaylist(intf);

    input_item_t *media = input_item_New(uri, ((void*)0));
    if (!media)
        return;
    input_item_AddOptions(media, options_count, options, VLC_INPUT_OPTION_TRUSTED);

    vlc_playlist_Lock(playlist);
    vlc_playlist_AppendOne(playlist, media);
    if (play_now)
        vlc_playlist_Start(playlist);
    vlc_playlist_Unlock(playlist);
    input_item_Release(media);
}
