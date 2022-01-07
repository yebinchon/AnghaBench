
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_dec_nb_ref; int i_nb_ref; int decoding_start; } ;
typedef TYPE_1__ decoder_synchro_t ;


 int vlc_tick_now () ;

void decoder_SynchroDecode( decoder_synchro_t * p_synchro )
{
    p_synchro->decoding_start = vlc_tick_now();
    p_synchro->i_nb_ref = p_synchro->i_dec_nb_ref;
}
