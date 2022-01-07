
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int i_map; int p_connection; int p_symbols; struct TYPE_5__* p_map; struct TYPE_5__* p_keys; int thread; } ;
typedef TYPE_2__ intf_sys_t ;


 int free (TYPE_2__*) ;
 int vlc_cancel (int ) ;
 int vlc_join (int ,int *) ;
 int xcb_disconnect (int ) ;
 int xcb_key_symbols_free (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t *)p_this;
    intf_sys_t *p_sys = p_intf->p_sys;

    if( !p_sys )
        return;

    vlc_cancel( p_sys->thread );
    vlc_join( p_sys->thread, ((void*)0) );

    for( int i = 0; i < p_sys->i_map; i++ )
        free( p_sys->p_map[i].p_keys );
    free( p_sys->p_map );
    xcb_key_symbols_free( p_sys->p_symbols );
    xcb_disconnect( p_sys->p_connection );
    free( p_sys );
}
