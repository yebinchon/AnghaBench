
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct decoder_owner {int p_fifo; int wait_fifo; int b_waiting; } ;
typedef int decoder_t ;
struct TYPE_4__ {int i_flags; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int block_ChainRelease (int ) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int msg_Warn (int *,char*) ;
 int vlc_fifo_DequeueAllUnlocked (int ) ;
 int vlc_fifo_GetBytes (int ) ;
 int vlc_fifo_GetCount (int ) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_QueueUnlocked (int ,TYPE_1__*) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_fifo_WaitCond (int ,int *) ;

void input_DecoderDecode( decoder_t *p_dec, block_t *p_block, bool b_do_pace )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    vlc_fifo_Lock( p_owner->p_fifo );
    if( !b_do_pace )
    {



        if( vlc_fifo_GetBytes( p_owner->p_fifo ) > 400*1024*1024 )
        {
            msg_Warn( p_dec, "decoder/packetizer fifo full (data not "
                      "consumed quickly enough), resetting fifo!" );
            block_ChainRelease( vlc_fifo_DequeueAllUnlocked( p_owner->p_fifo ) );
            p_block->i_flags |= BLOCK_FLAG_DISCONTINUITY;
        }
    }
    else
    if( !p_owner->b_waiting )
    {


        while( vlc_fifo_GetCount( p_owner->p_fifo ) >= 10 )
            vlc_fifo_WaitCond( p_owner->p_fifo, &p_owner->wait_fifo );
    }

    vlc_fifo_QueueUnlocked( p_owner->p_fifo, p_block );
    vlc_fifo_Unlock( p_owner->p_fifo );
}
