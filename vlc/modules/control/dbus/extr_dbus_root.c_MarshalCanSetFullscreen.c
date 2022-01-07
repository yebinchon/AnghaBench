
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;
typedef int dbus_bool_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_BOOLEAN ;
 int TRUE ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int dbus_message_iter_append_basic (int *,int ,int *) ;

__attribute__((used)) static int
MarshalCanSetFullscreen( intf_thread_t *p_intf, DBusMessageIter *container )
{ VLC_UNUSED(p_intf);
    dbus_bool_t b_ret = TRUE;
    if (!dbus_message_iter_append_basic( container, DBUS_TYPE_BOOLEAN, &b_ret ))
        return VLC_ENOMEM;
    return VLC_SUCCESS;
}
