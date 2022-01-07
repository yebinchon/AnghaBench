
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct decoder_owner {int paused; int p_fifo; scalar_t__ frames_countdown; int pause_date; } ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Signal (int ) ;
 int vlc_fifo_Unlock (int ) ;

void input_DecoderChangePause( decoder_t *p_dec, bool b_paused, vlc_tick_t i_date )
{
    struct decoder_owner *p_owner = dec_get_owner( p_dec );




    vlc_fifo_Lock( p_owner->p_fifo );
    p_owner->paused = b_paused;
    p_owner->pause_date = i_date;
    p_owner->frames_countdown = 0;
    vlc_fifo_Signal( p_owner->p_fifo );
    vlc_fifo_Unlock( p_owner->p_fifo );
}
