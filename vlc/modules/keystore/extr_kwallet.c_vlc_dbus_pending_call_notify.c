
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusPendingCall ;
typedef int DBusMessage ;


 int * dbus_pending_call_steal_reply (int *) ;

__attribute__((used)) static void
vlc_dbus_pending_call_notify( DBusPendingCall *p_pending_call, void *p_data )
{
    DBusMessage **pp_repmsg = p_data;
    *pp_repmsg = dbus_pending_call_steal_reply( p_pending_call );
}
