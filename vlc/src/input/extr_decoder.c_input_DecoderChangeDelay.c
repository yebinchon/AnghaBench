
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
struct decoder_owner {int p_fifo; int delay; } ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;

void input_DecoderChangeDelay( decoder_t *dec, vlc_tick_t delay )
{
    struct decoder_owner *owner = dec_get_owner( dec );

    vlc_fifo_Lock( owner->p_fifo );
    owner->delay = delay;
    vlc_fifo_Unlock( owner->p_fifo );
}
