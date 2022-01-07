
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_cat; } ;
struct decoder_owner {int flushing; scalar_t__ frames_countdown; int p_fifo; TYPE_1__ fmt; scalar_t__ paused; } ;
typedef int decoder_t ;


 scalar_t__ SPU_ES ;
 scalar_t__ VIDEO_ES ;
 int block_ChainRelease (int ) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_fifo_DequeueAllUnlocked (int ) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Signal (int ) ;
 int vlc_fifo_Unlock (int ) ;

void input_DecoderFlush( decoder_t *p_dec )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    vlc_fifo_Lock( p_owner->p_fifo );


    block_ChainRelease( vlc_fifo_DequeueAllUnlocked( p_owner->p_fifo ) );





    p_owner->flushing = 1;



    if( p_owner->paused
     && ( p_owner->fmt.i_cat == VIDEO_ES || p_owner->fmt.i_cat == SPU_ES )
     && p_owner->frames_countdown == 0 )
        p_owner->frames_countdown++;

    vlc_fifo_Signal( p_owner->p_fifo );

    vlc_fifo_Unlock( p_owner->p_fifo );
}
