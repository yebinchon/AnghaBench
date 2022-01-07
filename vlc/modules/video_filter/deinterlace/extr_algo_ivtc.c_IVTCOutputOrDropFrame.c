
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_16__ {scalar_t__ date; int i_nb_fields; scalar_t__ b_top_field_first; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_17__ {scalar_t__ i_mode; int b_sequence_valid; size_t i_cadence_pos; size_t i_tfd; int* pi_scores; int* pi_final_scores; int * pi_v_raw; } ;
typedef TYPE_3__ ivtc_sys_t ;
struct TYPE_18__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_15__ {TYPE_2__** pp_history; } ;
struct TYPE_19__ {TYPE_1__ context; TYPE_3__ ivtc; } ;
typedef TYPE_5__ filter_sys_t ;


 size_t CADENCE_POS_INVALID ;
 int CC_ALTLINE ;
 int ComposeFrame (TYPE_4__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int ,int) ;
 size_t FIELD_PAIR_TCBC ;
 size_t FIELD_PAIR_TCBN ;
 size_t FIELD_PAIR_TNBC ;
 size_t FIELD_PAIR_TNBN ;
 int IVTC_DETECTION_HISTORY_SIZE ;
 size_t IVTC_LATEST ;
 scalar_t__ IVTC_MODE_TELECINED_NTSC_HARD ;
 scalar_t__ IVTC_MODE_TELECINED_NTSC_SOFT ;
 int IVTC_OP_COMPOSE_TCBN ;
 int IVTC_OP_COMPOSE_TNBC ;
 int IVTC_OP_COPY_C ;
 int IVTC_OP_COPY_N ;
 int IVTC_OP_DROP_FRAME ;
 size_t TFD_INVALID ;
 int VEKTOR_CADENCE_POS_ALL ;
 scalar_t__ VLC_TICK_INVALID ;
 int assert (int) ;
 int msg_Dbg (TYPE_4__*,char*,int,int) ;
 int** pi_reconstruction_ops ;
 int* pi_timestamp_deltas ;
 int picture_Copy (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static bool IVTCOutputOrDropFrame( filter_t *p_filter, picture_t *p_dst )
{
    assert( p_filter != ((void*)0) );
    assert( p_dst != ((void*)0) );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc = &p_sys->ivtc;
    vlc_tick_t t_final = VLC_TICK_INVALID;

    picture_t *p_curr = p_sys->context.pp_history[1];
    picture_t *p_next = p_sys->context.pp_history[2];

    assert( p_next != ((void*)0) );
    assert( p_curr != ((void*)0) );
    int i_result_score = -1;
    int op;
    if( p_ivtc->i_mode == IVTC_MODE_TELECINED_NTSC_HARD )
    {



        if( p_ivtc->b_sequence_valid )
        {
            assert( p_ivtc->i_cadence_pos != CADENCE_POS_INVALID );
            assert( p_ivtc->i_tfd != TFD_INVALID );


            op = pi_reconstruction_ops[p_ivtc->i_tfd][p_ivtc->i_cadence_pos];

            if( op == IVTC_OP_DROP_FRAME )
            {

                p_ivtc->i_cadence_pos = (p_ivtc->i_cadence_pos + 1) % 5;


                return 0;
            }
            else
            {
                if( op == IVTC_OP_COPY_N )
                    i_result_score = p_ivtc->pi_scores[FIELD_PAIR_TNBN];
                else if( op == IVTC_OP_COPY_C )
                    i_result_score = p_ivtc->pi_scores[FIELD_PAIR_TCBC];
                else if( op == IVTC_OP_COMPOSE_TNBC )
                    i_result_score = p_ivtc->pi_scores[FIELD_PAIR_TNBC];
                else if( op == IVTC_OP_COMPOSE_TCBN )
                    i_result_score = p_ivtc->pi_scores[FIELD_PAIR_TCBN];





                int i_avg = 0;
                for( int i = 0; i < IVTC_DETECTION_HISTORY_SIZE; i++)
                    i_avg += p_ivtc->pi_final_scores[i];
                i_avg /= IVTC_DETECTION_HISTORY_SIZE;



                if( i_result_score > 1000 && i_result_score > 2*i_avg )
                {


                    p_ivtc->b_sequence_valid = 0;
                    msg_Dbg( p_filter, "Rejected cadence-based frame " "construction: interlace score %d " "(running average %d)",


                                       i_result_score, i_avg );
                    p_ivtc->pi_v_raw[IVTC_LATEST] = VEKTOR_CADENCE_POS_ALL;
                }
            }
        }







        if( !p_ivtc->b_sequence_valid )
        {
            int tnbn = p_ivtc->pi_scores[FIELD_PAIR_TNBN];
            int tnbc = p_ivtc->pi_scores[FIELD_PAIR_TNBC];
            int tcbn = p_ivtc->pi_scores[FIELD_PAIR_TCBN];

            if( p_next->b_top_field_first )
            {
                if( tnbn <= tnbc )
                {
                    op = IVTC_OP_COPY_N;
                    i_result_score = tnbn;
                }
                else
                {
                    op = IVTC_OP_COMPOSE_TNBC;
                    i_result_score = tnbc;
                }
            }
            else
            {
                if( tnbn <= tcbn )
                {
                    op = IVTC_OP_COPY_N;
                    i_result_score = tnbn;
                }
                else
                {
                    op = IVTC_OP_COMPOSE_TCBN;
                    i_result_score = tcbn;
                }
            }
        }
        if( p_ivtc->b_sequence_valid )
        {



            int i_timestamp_delta = pi_timestamp_deltas[p_ivtc->i_cadence_pos];
            assert( i_timestamp_delta >= 0 );


            t_final = p_curr->date
                    + (p_next->date - p_curr->date)*i_timestamp_delta/4;
        }
        else







        {
            t_final = p_curr->date;
        }


        p_ivtc->i_cadence_pos = (p_ivtc->i_cadence_pos + 1) % 5;
    }
    else if( p_ivtc->i_mode == IVTC_MODE_TELECINED_NTSC_SOFT )
    {
        op = IVTC_OP_COPY_C;
        i_result_score = p_ivtc->pi_scores[FIELD_PAIR_TCBC];






        if( p_curr->i_nb_fields == 3 )
        {


            vlc_tick_t i_half_field_dur = ( (p_next->date - p_curr->date)/3 ) / 2;
            t_final = p_curr->date + i_half_field_dur;
        }
        else
        {
            t_final = p_curr->date;
        }
    }
    else
    {
        op = IVTC_OP_COPY_N;
        i_result_score = p_ivtc->pi_scores[FIELD_PAIR_TNBN];



        t_final = p_next->date;
    }



    assert( op != IVTC_OP_DROP_FRAME );


    if( op == IVTC_OP_COPY_N )
        picture_Copy( p_dst, p_next );
    else if( op == IVTC_OP_COPY_C )
        picture_Copy( p_dst, p_curr );
    else if( op == IVTC_OP_COMPOSE_TNBC )
        ComposeFrame( p_filter, p_dst, p_next, p_curr, CC_ALTLINE, 0 );
    else if( op == IVTC_OP_COMPOSE_TCBN )
        ComposeFrame( p_filter, p_dst, p_curr, p_next, CC_ALTLINE, 0 );
    for( int i = 1; i < IVTC_DETECTION_HISTORY_SIZE; i++ )
        p_ivtc->pi_final_scores[i-1] = p_ivtc->pi_final_scores[i];
    p_ivtc->pi_final_scores[IVTC_LATEST] = i_result_score;




    if( t_final != VLC_TICK_INVALID )
        p_dst->date = t_final;

    return 1;
}
