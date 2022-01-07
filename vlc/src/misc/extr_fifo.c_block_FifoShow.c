
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int block_t ;
struct TYPE_3__ {int lock; int * p_first; } ;
typedef TYPE_1__ block_fifo_t ;


 int assert (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

block_t *block_FifoShow( block_fifo_t *p_fifo )
{
    block_t *b;

    vlc_mutex_lock( &p_fifo->lock );
    assert(p_fifo->p_first != ((void*)0));
    b = p_fifo->p_first;
    vlc_mutex_unlock( &p_fifo->lock );

    return b;
}
