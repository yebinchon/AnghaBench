
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_title {char* name; } ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_5__ {int playlist; } ;


 int msg_print (TYPE_2__*,char*,char*) ;
 struct vlc_player_title* vlc_player_GetSelectedTitle (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static void PlayerGetTitle(intf_thread_t *intf)
{
    vlc_player_t *player = vlc_playlist_GetPlayer(intf->p_sys->playlist);
    const struct vlc_player_title *title;

    vlc_player_Lock(player);
    title = vlc_player_GetSelectedTitle(player);
    msg_print(intf, "%s", (title != ((void*)0)) ? title->name : "");
    vlc_player_Unlock(player);
}
