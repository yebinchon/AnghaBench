
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ encoder_t ;
struct TYPE_6__ {int p_fifo; int s; struct TYPE_6__* p_buffer; scalar_t__ i_buffer; } ;
typedef TYPE_2__ encoder_sys_t ;
struct TYPE_7__ {int busy; int lock; } ;


 int block_FifoRelease (int ) ;
 TYPE_4__ entrant ;
 int free (TYPE_2__*) ;
 int shine_close (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void CloseEncoder( vlc_object_t *p_this )
{
    encoder_sys_t *p_sys = ((encoder_t*)p_this)->p_sys;

    vlc_mutex_lock( &entrant.lock );
    entrant.busy = 0;
    vlc_mutex_unlock( &entrant.lock );



    if( p_sys->i_buffer )
        free( p_sys->p_buffer );

    shine_close(p_sys->s);

    block_FifoRelease( p_sys->p_fifo );
    free( p_sys );
}
