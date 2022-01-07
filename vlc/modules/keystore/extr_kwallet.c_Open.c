
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_keystore_sys ;
struct TYPE_5__ {int p_sys; int pf_remove; int pf_find; int pf_store; } ;
typedef TYPE_1__ vlc_keystore ;


 int Find ;
 int Remove ;
 int Store ;
 int VLC_ENOMEM ;
 int calloc (int,int) ;
 int free (int ) ;
 int kwallet_open (TYPE_1__*) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int vlc_dbus_init (TYPE_1__*) ;

__attribute__((used)) static int
Open( vlc_object_t* p_this )
{
    vlc_keystore *p_keystore = ( vlc_keystore* )p_this;
    int i_ret;

    p_keystore->p_sys = calloc( 1, sizeof( vlc_keystore_sys ) );
    if ( !p_keystore->p_sys)
        return VLC_ENOMEM;

    i_ret = vlc_dbus_init( p_keystore );
    if ( i_ret )
    {
        msg_Dbg( p_keystore, "vlc_dbus_init failed" );
        goto error;
    }

    i_ret = kwallet_open( p_keystore );
    if ( i_ret )
    {
        msg_Dbg( p_keystore, "kwallet_open failed" );
        goto error;
    }

    p_keystore->pf_store = Store;
    p_keystore->pf_find = Find;
    p_keystore->pf_remove = Remove;

    return i_ret;

error:
    free( p_keystore->p_sys );
    return i_ret;
}
