
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_sequence_valid; int* pb_s_reliable; int* pb_v_reliable; int* pi_motion; int* pb_all_progressives; scalar_t__* pi_final_scores; scalar_t__* pi_bot_rep; scalar_t__* pi_top_rep; int * pi_v_raw; void** pi_v_cadence_pos; void** pi_s_cadence_pos; void** pi_cadence_pos_history; scalar_t__* pi_scores; void* i_old_mode; void* i_mode; int i_tfd; void* i_cadence_pos; } ;
typedef TYPE_1__ ivtc_sys_t ;
struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_7__ {TYPE_1__ ivtc; } ;
typedef TYPE_3__ filter_sys_t ;


 void* CADENCE_POS_INVALID ;
 int IVTC_DETECTION_HISTORY_SIZE ;
 void* IVTC_MODE_DETECTING ;
 int IVTC_NUM_FIELD_PAIRS ;
 int TFD_INVALID ;
 int VEKTOR_CADENCE_POS_ALL ;
 int assert (int ) ;

void IVTCClearState( filter_t *p_filter )
{
    assert( p_filter != ((void*)0) );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc = &p_sys->ivtc;

    p_ivtc->i_cadence_pos = CADENCE_POS_INVALID;
    p_ivtc->i_tfd = TFD_INVALID;
    p_ivtc->b_sequence_valid = 0;
    p_ivtc->i_mode = IVTC_MODE_DETECTING;
    p_ivtc->i_old_mode = IVTC_MODE_DETECTING;
    for( int i = 0; i < IVTC_NUM_FIELD_PAIRS; i++ )
        p_ivtc->pi_scores[i] = 0;
    for( int i = 0; i < IVTC_DETECTION_HISTORY_SIZE; i++ )
    {
        p_ivtc->pi_cadence_pos_history[i] = CADENCE_POS_INVALID;

        p_ivtc->pi_s_cadence_pos[i] = CADENCE_POS_INVALID;
        p_ivtc->pb_s_reliable[i] = 0;
        p_ivtc->pi_v_cadence_pos[i] = CADENCE_POS_INVALID;
        p_ivtc->pb_v_reliable[i] = 0;

        p_ivtc->pi_v_raw[i] = VEKTOR_CADENCE_POS_ALL;

        p_ivtc->pi_top_rep[i] = 0;
        p_ivtc->pi_bot_rep[i] = 0;
        p_ivtc->pi_motion[i] = -1;

        p_ivtc->pb_all_progressives[i] = 0;

        p_ivtc->pi_final_scores[i] = 0;
    }
}
