
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i_dec_nb_ref; scalar_t__ i_trash_nb_ref; scalar_t__ i_nb_ref; } ;
typedef TYPE_1__ decoder_synchro_t ;



void decoder_SynchroReset( decoder_synchro_t * p_synchro )
{
    p_synchro->i_nb_ref = 0;
    p_synchro->i_trash_nb_ref = p_synchro->i_dec_nb_ref = 0;
}
