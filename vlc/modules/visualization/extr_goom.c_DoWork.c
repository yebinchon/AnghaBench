
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i_blocks; int lock; int wait; TYPE_3__** pp_blocks; } ;
typedef TYPE_1__ goom_thread_t ;
struct TYPE_9__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_10__ {int i_pts; int i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 scalar_t__ MAX_BLOCKS ;
 TYPE_3__* block_Alloc (int ) ;
 int memcpy (int ,int ,int ) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static block_t *DoWork( filter_t *p_filter, block_t *p_in_buf )
{
    goom_thread_t *p_thread = p_filter->p_sys;
    block_t *p_block;


    vlc_mutex_lock( &p_thread->lock );
    if( p_thread->i_blocks == MAX_BLOCKS )
    {
        vlc_mutex_unlock( &p_thread->lock );
        return p_in_buf;
    }

    p_block = block_Alloc( p_in_buf->i_buffer );
    if( !p_block )
    {
        vlc_mutex_unlock( &p_thread->lock );
        return p_in_buf;
    }
    memcpy( p_block->p_buffer, p_in_buf->p_buffer, p_in_buf->i_buffer );
    p_block->i_pts = p_in_buf->i_pts;

    p_thread->pp_blocks[p_thread->i_blocks++] = p_block;

    vlc_cond_signal( &p_thread->wait );
    vlc_mutex_unlock( &p_thread->lock );

    return p_in_buf;
}
