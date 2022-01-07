
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int lock; int wait_acknowledge; int p_fifo; scalar_t__ b_idle; scalar_t__ paused; int b_has_data; int b_waiting; } ;
typedef int decoder_t ;


 int assert (int ) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int msg_Err (int *,char*) ;
 int vlc_cond_wait (int *,int *) ;
 scalar_t__ vlc_fifo_IsEmpty (int ) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_DecoderWait( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    assert( p_owner->b_waiting );

    vlc_mutex_lock( &p_owner->lock );
    while( !p_owner->b_has_data )
    {


        if( p_owner->paused )
            break;
        vlc_fifo_Lock( p_owner->p_fifo );
        if( p_owner->b_idle && vlc_fifo_IsEmpty( p_owner->p_fifo ) )
        {
            msg_Err( p_dec, "buffer deadlock prevented" );
            vlc_fifo_Unlock( p_owner->p_fifo );
            break;
        }
        vlc_fifo_Unlock( p_owner->p_fifo );
        vlc_cond_wait( &p_owner->wait_acknowledge, &p_owner->lock );
    }
    vlc_mutex_unlock( &p_owner->lock );
}
