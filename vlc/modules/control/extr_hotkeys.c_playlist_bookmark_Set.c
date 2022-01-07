
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int intf_thread_t ;
typedef int input_item_t ;


 int VLC_VAR_DOINHERIT ;
 int VLC_VAR_STRING ;
 int config_PutPsz (char*,char*) ;
 int free (char*) ;
 char* input_item_GetURI (int *) ;
 int msg_Info (int *,char*,int,char*) ;
 int var_Create (int *,char*,int) ;
 int * vlc_player_GetCurrentMedia (int *) ;
 int * vlc_playlist_GetPlayer (int *) ;

__attribute__((used)) static inline void
playlist_bookmark_Set(intf_thread_t *intf,
                      vlc_playlist_t *playlist, char *name, int id)
{
    var_Create(intf, name, VLC_VAR_STRING | VLC_VAR_DOINHERIT);
    vlc_player_t *player = vlc_playlist_GetPlayer(playlist);
    input_item_t *item = vlc_player_GetCurrentMedia(player);
    if (item)
    {
        char *uri = input_item_GetURI(item);
        config_PutPsz(name, uri);
        msg_Info(intf, "setting playlist bookmark %i to %s", id, uri);
        free(uri);
    }
}
