
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_2__ {scalar_t__ i_cat; } ;
struct decoder_owner {int lock; scalar_t__ p_vout; TYPE_1__ fmt; int p_fifo; int frames_countdown; int paused; } ;
typedef int decoder_t ;


 scalar_t__ VIDEO_ES ;
 int assert (int ) ;
 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Signal (int ) ;
 int vlc_fifo_Unlock (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_NextPicture (scalar_t__,scalar_t__*) ;

void input_DecoderFrameNext( decoder_t *p_dec, vlc_tick_t *pi_duration )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );

    assert( p_owner->paused );
    *pi_duration = 0;

    vlc_fifo_Lock( p_owner->p_fifo );
    p_owner->frames_countdown++;
    vlc_fifo_Signal( p_owner->p_fifo );
    vlc_fifo_Unlock( p_owner->p_fifo );

    vlc_mutex_lock( &p_owner->lock );
    if( p_owner->fmt.i_cat == VIDEO_ES )
    {
        if( p_owner->p_vout )
            vout_NextPicture( p_owner->p_vout, pi_duration );
    }
    vlc_mutex_unlock( &p_owner->lock );
}
