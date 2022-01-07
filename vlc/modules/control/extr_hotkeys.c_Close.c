
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_player_t ;
typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_7__ {int player_listener; int playlist; } ;
typedef TYPE_2__ intf_sys_t ;


 int ActionCallback ;
 int free (TYPE_2__*) ;
 int var_DelCallback (int ,char*,int ,TYPE_1__*) ;
 int vlc_object_instance (TYPE_1__*) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_RemoveListener (int *,int ) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static void
Close(vlc_object_t *this)
{
    intf_thread_t *intf = (intf_thread_t *)this;
    intf_sys_t *sys = intf->p_sys;
    vlc_player_t *player = vlc_playlist_GetPlayer(sys->playlist);
    vlc_player_Lock(player);
    vlc_player_RemoveListener(player, sys->player_listener);
    vlc_player_Unlock(player);
    var_DelCallback(vlc_object_instance(intf), "key-action", ActionCallback, intf);
    free(sys);
}
