
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int decoder_t ;
struct TYPE_4__ {int b_no_skip; int current_pts; int i_frame_rate; scalar_t__ i_pic; scalar_t__ i_not_chosen_pic; scalar_t__ i_trashed_pic; scalar_t__ i_backward_period; scalar_t__ i_current_period; int backward_pts; scalar_t__ i_dec_nb_ref; scalar_t__ i_trash_nb_ref; scalar_t__ i_nb_ref; int pi_meaningful; int p_tau; int i_eta_b; int i_n_b; int i_eta_p; int i_n_p; scalar_t__ b_quiet; int * p_dec; } ;
typedef TYPE_1__ decoder_synchro_t ;


 int DEFAULT_NB_B ;
 int DEFAULT_NB_P ;
 int VLC_TICK_INVALID ;
 TYPE_1__* calloc (int,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ var_InheritBool (int *,char*) ;

decoder_synchro_t * decoder_SynchroInit( decoder_t *p_dec, int i_frame_rate )
{
    decoder_synchro_t * p_synchro = calloc( 1, sizeof(*p_synchro) );
    if( !p_synchro )
        return ((void*)0);

    p_synchro->p_dec = p_dec;
    p_synchro->b_no_skip = !var_InheritBool( p_dec, "skip-frames" );
    p_synchro->b_quiet = var_InheritBool( p_dec, "quiet-synchro" );


    p_synchro->i_n_p = p_synchro->i_eta_p = DEFAULT_NB_P;
    p_synchro->i_n_b = p_synchro->i_eta_b = DEFAULT_NB_B;
    memset( p_synchro->p_tau, 0, 4 * sizeof(vlc_tick_t) );
    memset( p_synchro->pi_meaningful, 0, 4 * sizeof(unsigned int) );
    p_synchro->i_nb_ref = 0;
    p_synchro->i_trash_nb_ref = p_synchro->i_dec_nb_ref = 0;
    p_synchro->current_pts = 1,
    p_synchro->backward_pts = VLC_TICK_INVALID;
    p_synchro->i_current_period = p_synchro->i_backward_period = 0;
    p_synchro->i_trashed_pic = p_synchro->i_not_chosen_pic =
        p_synchro->i_pic = 0;

    p_synchro->i_frame_rate = i_frame_rate;

    return p_synchro;
}
