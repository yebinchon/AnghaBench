
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_trash_nb_ref; int i_nb_ref; int i_trashed_pic; } ;
typedef TYPE_1__ decoder_synchro_t ;



void decoder_SynchroTrash( decoder_synchro_t * p_synchro )
{
    p_synchro->i_trashed_pic++;
    p_synchro->i_nb_ref = p_synchro->i_trash_nb_ref;
}
