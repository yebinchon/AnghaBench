
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t i_sid; } ;
typedef TYPE_1__ vlc_keystore_sys ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ vlc_keystore ;
typedef int DBusMessage ;


 int * dbus_message_new_method_call (int ,int ,int ,char const*) ;
 int msg_Err (TYPE_2__*,char*) ;
 int * ppsz_sAddr ;
 int * ppsz_sPath ;
 int psz_kwallet_interface ;

__attribute__((used)) static DBusMessage*
vlc_dbus_new_method( vlc_keystore* p_keystore, const char* psz_method )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    DBusMessage* msg;

    msg = dbus_message_new_method_call( ppsz_sAddr[p_sys->i_sid],
                                        ppsz_sPath[p_sys->i_sid],
                                        psz_kwallet_interface,
                                        psz_method );
    if ( !msg )
    {
        msg_Err( p_keystore, "vlc_dbus_new_method : Failed to create message" );
        return ((void*)0);
    }

    return msg;
}
