
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int b_exit; size_t i_blocks; int * pp_blocks; int wait; int lock; int p_vout; int thread; } ;
typedef TYPE_1__ goom_thread_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ filter_t ;


 int block_Release (int ) ;
 int free (TYPE_1__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_join (int ,int *) ;
 int vlc_mutex_destroy (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_Close (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    goom_thread_t *p_thread = p_filter->p_sys;


    vlc_mutex_lock( &p_thread->lock );
    p_thread->b_exit = 1;
    vlc_cond_signal( &p_thread->wait );
    vlc_mutex_unlock( &p_thread->lock );

    vlc_join( p_thread->thread, ((void*)0) );


    vout_Close( p_thread->p_vout );
    vlc_mutex_destroy( &p_thread->lock );
    vlc_cond_destroy( &p_thread->wait );

    while( p_thread->i_blocks-- )
    {
        block_Release( p_thread->pp_blocks[p_thread->i_blocks] );
    }

    free( p_thread );
}
