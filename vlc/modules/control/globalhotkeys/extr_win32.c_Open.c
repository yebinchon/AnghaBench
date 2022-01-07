
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_7__ {int lock; int wait; int thread; int * hotkeyWindow; } ;
typedef TYPE_2__ intf_sys_t ;


 int * INVALID_HANDLE_VALUE ;
 int Thread ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_LOW ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_init (int *) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_init (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t *)p_this;
    intf_sys_t *p_sys = malloc( sizeof (intf_sys_t) );

    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;

    p_intf->p_sys = p_sys;
    p_sys->hotkeyWindow = ((void*)0);
    vlc_mutex_init( &p_sys->lock );
    vlc_cond_init( &p_sys->wait );

    if( vlc_clone( &p_sys->thread, Thread, p_intf, VLC_THREAD_PRIORITY_LOW ) )
    {
        vlc_mutex_destroy( &p_sys->lock );
        vlc_cond_destroy( &p_sys->wait );
        free( p_sys );
        p_intf->p_sys = ((void*)0);

        return VLC_ENOMEM;
    }

    vlc_mutex_lock( &p_sys->lock );
    while( p_sys->hotkeyWindow == ((void*)0) )
        vlc_cond_wait( &p_sys->wait, &p_sys->lock );
    if( p_sys->hotkeyWindow == INVALID_HANDLE_VALUE )
    {
        vlc_mutex_unlock( &p_sys->lock );
        vlc_join( p_sys->thread, ((void*)0) );
        vlc_mutex_destroy( &p_sys->lock );
        vlc_cond_destroy( &p_sys->wait );
        free( p_sys );
        p_intf->p_sys = ((void*)0);

        return VLC_ENOMEM;
    }
    vlc_mutex_unlock( &p_sys->lock );

    return VLC_SUCCESS;
}
