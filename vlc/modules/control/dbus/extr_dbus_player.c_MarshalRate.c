
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_4__ {int playlist; } ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_DOUBLE ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int dbus_message_iter_append_basic (int *,int ,double*) ;
 double vlc_player_GetRate (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int ) ;

__attribute__((used)) static int
MarshalRate( intf_thread_t *p_intf, DBusMessageIter *container )
{
    vlc_player_t *player = vlc_playlist_GetPlayer(p_intf->p_sys->playlist);
    vlc_player_Lock(player);
    double d_rate = vlc_player_GetRate(player);
    vlc_player_Unlock(player);

    if( !dbus_message_iter_append_basic( container, DBUS_TYPE_DOUBLE,
                                         &d_rate ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
