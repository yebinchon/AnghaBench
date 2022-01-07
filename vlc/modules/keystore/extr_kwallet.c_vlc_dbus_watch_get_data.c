
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_dbus_watch_data {int * p_watch; } ;
typedef int DBusWatch ;


 unsigned int MAX_WATCHES ;

__attribute__((used)) static struct vlc_dbus_watch_data *
vlc_dbus_watch_get_data( DBusWatch *p_watch,
                         struct vlc_dbus_watch_data *p_ctx )
{
    for( unsigned i = 0; i < MAX_WATCHES; ++i )
    {
        if( p_ctx[i].p_watch == ((void*)0) || p_ctx[i].p_watch == p_watch )
            return &p_ctx[i];
    }
    return ((void*)0);
}
