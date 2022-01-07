
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int i_nb_fields; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_10__ {int* pi_cadence_pos_history; int* pi_motion; int b_sequence_valid; int* pb_all_progressives; scalar_t__ i_mode; int i_cadence_pos; int i_tfd; } ;
typedef TYPE_3__ ivtc_sys_t ;
struct TYPE_11__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_8__ {TYPE_2__** pp_history; } ;
struct TYPE_12__ {TYPE_1__ context; TYPE_3__ ivtc; } ;
typedef TYPE_5__ filter_sys_t ;


 int CADENCE_POS_INVALID ;
 int IVTC_DETECTION_HISTORY_SIZE ;
 size_t IVTC_LATEST ;
 scalar_t__ IVTC_MODE_DETECTING ;
 scalar_t__ IVTC_MODE_TELECINED_NTSC_HARD ;
 int TFD_BFF ;
 int TFD_INVALID ;
 int TFD_TFF ;
 int assert (int ) ;
 int msg_Dbg (TYPE_4__*,char*) ;
 int* pi_detected_pos_to_cadence_pos ;
 int* pi_detected_pos_to_tfd ;

__attribute__((used)) static void IVTCCadenceAnalyze( filter_t *p_filter )
{
    assert( p_filter != ((void*)0) );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc = &p_sys->ivtc;
    picture_t *p_prev = p_sys->context.pp_history[0];
    picture_t *p_curr = p_sys->context.pp_history[1];
    picture_t *p_next = p_sys->context.pp_history[2];

    assert( p_next != ((void*)0) );
    assert( p_curr != ((void*)0) );
    assert( p_prev != ((void*)0) );
    int j_next = p_ivtc->pi_cadence_pos_history[IVTC_LATEST];
    int j_curr = p_ivtc->pi_cadence_pos_history[IVTC_LATEST-1];
    int j_prev = p_ivtc->pi_cadence_pos_history[IVTC_LATEST-2];

    bool b_expected = 0;
    if( j_next != CADENCE_POS_INVALID && j_curr != CADENCE_POS_INVALID )
    {
        int pos_next = pi_detected_pos_to_cadence_pos[j_next];
        int pos_curr = pi_detected_pos_to_cadence_pos[j_curr];
        b_expected = (pos_next == (pos_curr + 1) % 5);
    }
    bool b_old_expected = 0;
    if( j_curr != CADENCE_POS_INVALID && j_prev != CADENCE_POS_INVALID )
    {
        int pos_curr = pi_detected_pos_to_cadence_pos[j_curr];
        int pos_prev = pi_detected_pos_to_cadence_pos[j_prev];
        b_old_expected = (pos_curr == (pos_prev + 1) % 5);
    }

    int i_motion = p_ivtc->pi_motion[IVTC_LATEST];
    int i_old_motion = p_ivtc->pi_motion[IVTC_LATEST-1];

    bool b_prev_valid = (p_prev->i_nb_fields == 2);
    bool b_curr_valid = (p_curr->i_nb_fields == 2) &&
                         (i_old_motion > 0 || b_old_expected);
    bool b_next_valid = (p_next->i_nb_fields == 2) &&
                         (i_motion > 0 || b_expected);
    bool b_no_invalids = (b_prev_valid && b_curr_valid && b_next_valid);





    if( b_no_invalids )
    {
        for( int i = 0; i < IVTC_DETECTION_HISTORY_SIZE; ++i )
        {
            const int i_detected_pos = p_ivtc->pi_cadence_pos_history[i];
            if( i_detected_pos == CADENCE_POS_INVALID )
            {
                b_no_invalids = 0;
                break;
            }
        }
    }


    p_ivtc->b_sequence_valid = 0;
    if( b_no_invalids )
    {

        int pi_tfd[IVTC_DETECTION_HISTORY_SIZE];
        int pi_pos[IVTC_DETECTION_HISTORY_SIZE];
        for( int i = 0; i < IVTC_DETECTION_HISTORY_SIZE; ++i )
        {
            const int i_detected_pos = p_ivtc->pi_cadence_pos_history[i];
            pi_pos[i] = pi_detected_pos_to_cadence_pos[i_detected_pos];
            pi_tfd[i] = pi_detected_pos_to_tfd[i_detected_pos];
        }
        p_ivtc->b_sequence_valid = 1;
        bool b_all_progressive = (pi_pos[0] == 3);
        int j = pi_pos[0];
        for( int i = 1; i < IVTC_DETECTION_HISTORY_SIZE; ++i )
        {
            if( pi_pos[i] != (++j % 5) )
                p_ivtc->b_sequence_valid = 0;
            if( pi_pos[i] != 3 )
                b_all_progressive = 0;
        }
        p_ivtc->pb_all_progressives[IVTC_LATEST] = b_all_progressive;

        if( p_ivtc->b_sequence_valid )
        {

            int i_vote_invalid = 0;
            int i_vote_tff = 0;
            int i_vote_bff = 0;
            for( int i = 0; i < IVTC_DETECTION_HISTORY_SIZE; ++i )
            {
                if( pi_tfd[i] == TFD_INVALID )
                    i_vote_invalid++;
                else if( pi_tfd[i] == TFD_TFF )
                    i_vote_tff++;
                else if( pi_tfd[i] == TFD_BFF )
                    i_vote_bff++;
            }



            int i_telecine_field_dominance = TFD_INVALID;
            if( i_vote_tff >= 2)
                i_telecine_field_dominance = TFD_TFF;
            else if( i_vote_bff >= 2)
                i_telecine_field_dominance = TFD_BFF;
            if( i_telecine_field_dominance == TFD_TFF )
            {
                if( p_ivtc->i_mode != IVTC_MODE_TELECINED_NTSC_HARD )
                    msg_Dbg( p_filter, "IVTC: 3:2 pulldown: NTSC TFF " "hard telecine detected." );

                p_ivtc->i_mode = IVTC_MODE_TELECINED_NTSC_HARD;
                p_ivtc->i_cadence_pos = pi_pos[IVTC_LATEST];
                p_ivtc->i_tfd = TFD_TFF;
            }
            else if( i_telecine_field_dominance == TFD_BFF )
            {
                if( p_ivtc->i_mode != IVTC_MODE_TELECINED_NTSC_HARD )
                    msg_Dbg( p_filter, "IVTC: 3:2 pulldown: NTSC BFF " "hard telecine detected." );

                p_ivtc->i_mode = IVTC_MODE_TELECINED_NTSC_HARD;
                p_ivtc->i_cadence_pos = pi_pos[IVTC_LATEST];
                p_ivtc->i_tfd = TFD_BFF;
            }
        }

        else if( b_all_progressive )
        {




            bool b_really_all_progressive = 1;
            for( int i = 0; i < IVTC_DETECTION_HISTORY_SIZE ; i++ )
            {
                if( p_ivtc->pb_all_progressives[i] == 0 )
                {
                    b_really_all_progressive = 0;
                    break;
                }
            }


            if( b_really_all_progressive )
            {





                if( p_ivtc->i_mode == IVTC_MODE_TELECINED_NTSC_HARD )
                    msg_Dbg( p_filter, "IVTC: 3:2 pulldown: progressive " "signal detected." );

                p_ivtc->i_mode = IVTC_MODE_DETECTING;
                p_ivtc->i_cadence_pos = CADENCE_POS_INVALID;
                p_ivtc->i_tfd = TFD_INVALID;
            }
        }
    }
}
