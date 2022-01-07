
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ vlc_keystore ;
struct TYPE_4__ {struct TYPE_4__* psz_wallet; struct TYPE_4__* psz_app_id; int connection; } ;


 int dbus_connection_close (int ) ;
 int dbus_connection_unref (int ) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void
Close( vlc_object_t* p_this )
{
    vlc_keystore *p_keystore = ( vlc_keystore* )p_this;

    dbus_connection_close( p_keystore->p_sys->connection );
    dbus_connection_unref( p_keystore->p_sys->connection );
    free( p_keystore->p_sys->psz_app_id );
    free( p_keystore->p_sys->psz_wallet );
    free( p_keystore->p_sys );
}
