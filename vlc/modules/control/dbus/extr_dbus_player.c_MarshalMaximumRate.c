
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intf_thread_t ;
typedef int DBusMessageIter ;


 int DBUS_TYPE_DOUBLE ;
 double INPUT_RATE_MAX ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int dbus_message_iter_append_basic (int *,int ,double*) ;

__attribute__((used)) static int
MarshalMaximumRate( intf_thread_t *p_intf, DBusMessageIter *container )
{
    VLC_UNUSED( p_intf );
    double d_max_rate = INPUT_RATE_MAX;

    if( !dbus_message_iter_append_basic( container, DBUS_TYPE_DOUBLE, &d_max_rate ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}
