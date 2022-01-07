
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int wait; int p_first; } ;
typedef TYPE_1__ block_fifo_t ;


 int block_ChainRelease (int ) ;
 int free (TYPE_1__*) ;
 int vlc_cond_destroy (int *) ;
 int vlc_mutex_destroy (int *) ;

void block_FifoRelease( block_fifo_t *p_fifo )
{
    block_ChainRelease( p_fifo->p_first );
    vlc_cond_destroy( &p_fifo->wait );
    vlc_mutex_destroy( &p_fifo->lock );
    free( p_fifo );
}
