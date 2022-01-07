
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_size; scalar_t__ i_depth; int * p_first; int ** pp_last; int wait; int lock; } ;
typedef TYPE_1__ block_fifo_t ;


 TYPE_1__* malloc (int) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

block_fifo_t *block_FifoNew( void )
{
    block_fifo_t *p_fifo = malloc( sizeof( block_fifo_t ) );
    if( !p_fifo )
        return ((void*)0);

    vlc_mutex_init( &p_fifo->lock );
    vlc_cond_init( &p_fifo->wait );
    p_fifo->p_first = ((void*)0);
    p_fifo->pp_last = &p_fifo->p_first;
    p_fifo->i_depth = p_fifo->i_size = 0;

    return p_fifo;
}
