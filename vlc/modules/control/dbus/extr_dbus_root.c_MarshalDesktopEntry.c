
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_STRING ;
 char* PACKAGE ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int dbus_message_iter_append_basic (int *,int ,char const**) ;

__attribute__((used)) static int
MarshalDesktopEntry( intf_thread_t *p_intf, DBusMessageIter *container )
{
    VLC_UNUSED( p_intf );
    const char* psz_ret = PACKAGE;

    if (!dbus_message_iter_append_basic( container, DBUS_TYPE_STRING, &psz_ret ))
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
