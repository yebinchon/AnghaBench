
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int decoding_start; int* p_tau; int* pi_meaningful; } ;
typedef TYPE_1__ decoder_synchro_t ;


 int MAX_PIC_AVERAGE ;
 int MAX_VALID_TAU ;
 int vlc_tick_now () ;

void decoder_SynchroEnd( decoder_synchro_t * p_synchro, int i_coding_type,
                      bool b_garbage )
{
    vlc_tick_t tau;

    if( b_garbage )
        return;

    tau = vlc_tick_now() - p_synchro->decoding_start;



    if( tau < 3 * p_synchro->p_tau[i_coding_type] ||
          ( !p_synchro->pi_meaningful[i_coding_type] && tau < MAX_VALID_TAU ) )
    {

        p_synchro->p_tau[i_coding_type] =
            (p_synchro->pi_meaningful[i_coding_type]
             * p_synchro->p_tau[i_coding_type] + tau)
            / (p_synchro->pi_meaningful[i_coding_type] + 1);
        if( p_synchro->pi_meaningful[i_coding_type] < MAX_PIC_AVERAGE )
        {
            p_synchro->pi_meaningful[i_coding_type]++;
        }
    }
}
