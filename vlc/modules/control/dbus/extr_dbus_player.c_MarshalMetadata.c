
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int ssize_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_4__ {int * playlist; } ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_ARRAY ;
 int GetInputMeta (int *,int *,int *) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int dbus_message_iter_close_container (int *,int *) ;
 int dbus_message_iter_open_container (int *,int ,char*,int *) ;
 int * vlc_playlist_Get (int *,int) ;
 int vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static int
MarshalMetadata( intf_thread_t *p_intf, DBusMessageIter *container )
{
    int result = VLC_SUCCESS;
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;
    vlc_playlist_Lock(playlist);
    ssize_t id = vlc_playlist_GetCurrentIndex(playlist);
    if(id != -1)
    {
        vlc_playlist_item_t *plitem = vlc_playlist_Get(playlist, id);
        result = GetInputMeta(playlist, plitem, container);
    }
    else
    {
        DBusMessageIter a;
        if( !dbus_message_iter_open_container( container, DBUS_TYPE_ARRAY,
                                               "{sv}", &a ) ||
            !dbus_message_iter_close_container( container, &a ) )
            result = VLC_ENOMEM;
    }
    vlc_playlist_Unlock(playlist);
    return result;
}
