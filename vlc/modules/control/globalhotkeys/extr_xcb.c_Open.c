
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xcb_setup_t ;
struct TYPE_13__ {TYPE_1__* data; int rem; } ;
typedef TYPE_2__ xcb_screen_iterator_t ;
typedef int vlc_object_t ;
struct TYPE_14__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ intf_thread_t ;
struct TYPE_15__ {int p_connection; scalar_t__ p_symbols; struct TYPE_15__* p_map; struct TYPE_15__* p_keys; int thread; int root; } ;
typedef TYPE_4__ intf_sys_t ;
struct TYPE_12__ {int root; } ;


 int Mapping (TYPE_3__*) ;
 int Register (TYPE_3__*) ;
 int Thread ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 TYPE_4__* calloc (int,int) ;
 int free (TYPE_4__*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_3__*,int ) ;
 int xcb_connect (int *,int*) ;
 scalar_t__ xcb_connection_has_error (int ) ;
 int xcb_disconnect (int ) ;
 int * xcb_get_setup (int ) ;
 scalar_t__ xcb_key_symbols_alloc (int ) ;
 int xcb_key_symbols_free (scalar_t__) ;
 int xcb_screen_next (TYPE_2__*) ;
 TYPE_2__ xcb_setup_roots_iterator (int const*) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t *)p_this;
    intf_sys_t *p_sys;
    int ret = VLC_EGENERIC;

    p_intf->p_sys = p_sys = calloc( 1, sizeof(*p_sys) );
    if( !p_sys )
        return VLC_ENOMEM;

    int i_screen_default;
    p_sys->p_connection = xcb_connect( ((void*)0), &i_screen_default );

    if( xcb_connection_has_error( p_sys->p_connection ) )
        goto error;


    const xcb_setup_t* xcbsetup = xcb_get_setup( p_sys->p_connection );
    if( !xcbsetup )
        goto error;
    xcb_screen_iterator_t iter = xcb_setup_roots_iterator( xcbsetup );
    for( int i = 0; i < i_screen_default; i++ )
    {
        if( !iter.rem )
            break;
        xcb_screen_next( &iter );
    }
    if( !iter.rem )
        goto error;
    p_sys->root = iter.data->root;


    p_sys->p_symbols = xcb_key_symbols_alloc( p_sys->p_connection );
    if( !p_sys->p_symbols )
        goto error;

    if( !Mapping( p_intf ) )
    {
        ret = VLC_SUCCESS;
        p_intf->p_sys = ((void*)0);
        goto error;
    }
    Register( p_intf );

    if( vlc_clone( &p_sys->thread, Thread, p_intf, VLC_THREAD_PRIORITY_LOW ) )
    {
        if( p_sys->p_map )
        {
            free( p_sys->p_map->p_keys );
            free( p_sys->p_map );
        }
        goto error;
    }
    return VLC_SUCCESS;

error:
    if( p_sys->p_symbols )
        xcb_key_symbols_free( p_sys->p_symbols );
    xcb_disconnect( p_sys->p_connection );
    free( p_sys );
    return ret;
}
