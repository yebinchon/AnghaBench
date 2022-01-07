
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int wait; int lock; int thread; int * hotkeyWindow; } ;
typedef TYPE_2__ intf_sys_t ;


 int PostMessage (int *,int ,int ,int ) ;
 int WM_CLOSE ;
 int free (TYPE_2__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t *)p_this;
    intf_sys_t *p_sys = p_intf->p_sys;


    vlc_mutex_lock( &p_sys->lock );
    if( p_sys->hotkeyWindow != ((void*)0) )
        PostMessage( p_sys->hotkeyWindow, WM_CLOSE, 0, 0 );
    vlc_mutex_unlock( &p_sys->lock );

    vlc_join( p_sys->thread, ((void*)0) );
    vlc_mutex_destroy( &p_sys->lock );
    vlc_cond_destroy( &p_sys->wait );
    free( p_sys );
}
