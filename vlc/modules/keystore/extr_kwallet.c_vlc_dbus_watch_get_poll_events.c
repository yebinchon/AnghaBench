
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusWatch ;


 unsigned int DBUS_WATCH_READABLE ;
 unsigned int DBUS_WATCH_WRITABLE ;
 short POLLIN ;
 short POLLOUT ;
 unsigned int dbus_watch_get_flags (int *) ;

__attribute__((used)) static short
vlc_dbus_watch_get_poll_events( DBusWatch *p_watch )
{
    unsigned int i_flags = dbus_watch_get_flags( p_watch );
    short i_events = 0;

    if( i_flags & DBUS_WATCH_READABLE )
        i_events |= POLLIN;
    if( i_flags & DBUS_WATCH_WRITABLE )
        i_events |= POLLOUT;
    return i_events;
}
