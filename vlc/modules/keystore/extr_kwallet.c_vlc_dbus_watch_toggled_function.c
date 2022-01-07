
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short events; } ;
struct vlc_dbus_watch_data {TYPE_1__ pollfd; } ;
typedef int DBusWatch ;


 scalar_t__ dbus_watch_get_enabled (int *) ;
 struct vlc_dbus_watch_data* vlc_dbus_watch_get_data (int *,void*) ;
 short vlc_dbus_watch_get_poll_events (int *) ;

__attribute__((used)) static void
vlc_dbus_watch_toggled_function( DBusWatch *p_watch, void *p_data )
{
    struct vlc_dbus_watch_data *p_ctx = vlc_dbus_watch_get_data( p_watch, p_data );
    short i_events = vlc_dbus_watch_get_poll_events( p_watch );

    if( dbus_watch_get_enabled( p_watch ) )
        p_ctx->pollfd.events |= i_events;
    else
        p_ctx->pollfd.events &= ~i_events;
}
