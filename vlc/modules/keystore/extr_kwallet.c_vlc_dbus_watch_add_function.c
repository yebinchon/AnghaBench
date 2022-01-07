
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short events; int fd; } ;
struct vlc_dbus_watch_data {int * p_watch; TYPE_1__ pollfd; } ;
typedef int dbus_bool_t ;
typedef int DBusWatch ;


 int FALSE ;
 short POLLERR ;
 short POLLHUP ;
 int TRUE ;
 int dbus_watch_get_unix_fd (int *) ;
 struct vlc_dbus_watch_data* vlc_dbus_watch_get_data (int *,void*) ;
 short vlc_dbus_watch_get_poll_events (int *) ;

__attribute__((used)) static dbus_bool_t
vlc_dbus_watch_add_function( DBusWatch *p_watch, void *p_data )
{
    struct vlc_dbus_watch_data *p_ctx = vlc_dbus_watch_get_data( p_watch, p_data );

    if( p_ctx == ((void*)0) )
        return FALSE;

    short i_events = POLLHUP | POLLERR;

    i_events |= vlc_dbus_watch_get_poll_events( p_watch );

    p_ctx->pollfd.fd = dbus_watch_get_unix_fd( p_watch );
    p_ctx->pollfd.events = i_events;
    p_ctx->p_watch = p_watch;
    return TRUE;
}
