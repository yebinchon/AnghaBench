
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_4__ {int * playlist; } ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_ARRAY ;
 int DBUS_TYPE_OBJECT_PATH ;
 int MPRIS_TRACKID_FORMAT ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int asprintf (char**,int ,size_t) ;
 int dbus_message_iter_abandon_container (int *,int *) ;
 int dbus_message_iter_append_basic (int *,int ,char**) ;
 int dbus_message_iter_close_container (int *,int *) ;
 int dbus_message_iter_open_container (int *,int ,char*,int *) ;
 int free (char*) ;
 size_t vlc_playlist_Count (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static int
MarshalTracks( intf_thread_t *p_intf, DBusMessageIter *container )
{
    DBusMessageIter tracks;
    char *psz_track_id = ((void*)0);
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;

    dbus_message_iter_open_container( container, DBUS_TYPE_ARRAY, "o",
                                      &tracks );

    vlc_playlist_Lock(playlist);
    size_t pl_size = vlc_playlist_Count(playlist);
    vlc_playlist_Unlock(playlist);
    for (size_t i = 0; i < pl_size; i++)
    {
        if (asprintf(&psz_track_id, MPRIS_TRACKID_FORMAT, i) == -1 ||
            !dbus_message_iter_append_basic( &tracks,
                                             DBUS_TYPE_OBJECT_PATH,
                                             &psz_track_id ) )
        {
            dbus_message_iter_abandon_container( container, &tracks );
            return VLC_ENOMEM;
        }

        free( psz_track_id );
    }

    if( !dbus_message_iter_close_container( container, &tracks ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
