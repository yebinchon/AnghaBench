
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {float request_rate; int p_fifo; } ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int vlc_fifo_Lock (int ) ;
 int vlc_fifo_Unlock (int ) ;

void input_DecoderChangeRate( decoder_t *dec, float rate )
{
    struct decoder_owner *owner = dec_get_owner( dec );

    vlc_fifo_Lock( owner->p_fifo );
    owner->request_rate = rate;
    vlc_fifo_Unlock( owner->p_fifo );
}
