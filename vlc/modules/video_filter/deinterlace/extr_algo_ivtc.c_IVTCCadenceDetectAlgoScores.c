
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int b_top_field_first; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_9__ {int* pi_scores; int* pi_s_cadence_pos; int* pi_cadence_pos_history; int* pi_motion; int* pb_s_reliable; } ;
typedef TYPE_3__ ivtc_sys_t ;
typedef int int64_t ;
struct TYPE_10__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_7__ {TYPE_2__** pp_history; } ;
struct TYPE_11__ {TYPE_1__ context; TYPE_3__ ivtc; } ;
typedef TYPE_5__ filter_sys_t ;


 int CADENCE_POS_BFF_END ;
 int CADENCE_POS_BFF_FIRST ;
 int CADENCE_POS_INVALID ;
 size_t CADENCE_POS_PROGRESSIVE ;
 int CADENCE_POS_TFF_END ;
 int CADENCE_POS_TFF_FIRST ;
 size_t IVTC_LATEST ;
 int NUM_CADENCE_POS ;
 int assert (int ) ;
 size_t** pi_best_field_pairs ;
 int* pi_detected_pos_to_cadence_pos ;

__attribute__((used)) static void IVTCCadenceDetectAlgoScores( filter_t *p_filter )
{
    assert( p_filter != ((void*)0) );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc = &p_sys->ivtc;
    picture_t *p_next = p_sys->context.pp_history[2];

    assert( p_next != ((void*)0) );




    int pi_ivtc_scores[NUM_CADENCE_POS];
    for( int i = 0; i < NUM_CADENCE_POS; i++ )
        pi_ivtc_scores[i] = p_ivtc->pi_scores[ pi_best_field_pairs[i][0] ]
                          + p_ivtc->pi_scores[ pi_best_field_pairs[i][1] ]
                          + p_ivtc->pi_scores[ pi_best_field_pairs[i][2] ];

    int j = CADENCE_POS_PROGRESSIVE;
    int minscore = pi_ivtc_scores[j];


    int imin = CADENCE_POS_TFF_FIRST;
    int iend = CADENCE_POS_TFF_END;
    if( !p_next->b_top_field_first )
    {
        imin = CADENCE_POS_BFF_FIRST;
        iend = CADENCE_POS_BFF_END;
    }
    for( int i = imin; i < iend; i++ )
    {
        if( pi_ivtc_scores[i] < minscore )
        {
            minscore = pi_ivtc_scores[i];
            j = i;
        }
    }



    p_ivtc->pi_s_cadence_pos[IVTC_LATEST] = j;
    int mean = pi_ivtc_scores[CADENCE_POS_PROGRESSIVE];
    int mean_except_min = 0;
    if( j != CADENCE_POS_PROGRESSIVE )
        mean_except_min = pi_ivtc_scores[CADENCE_POS_PROGRESSIVE];
    for( int i = imin; i < iend; i++ )
    {
        mean += pi_ivtc_scores[i];
        if( i != j )
            mean_except_min += pi_ivtc_scores[i];
    }

    mean /= (iend - imin + 1);
    mean_except_min /= (iend - imin);


    double mean_ratio = (double)mean_except_min / (double)mean;
    int64_t diff = (int64_t)(pi_ivtc_scores[CADENCE_POS_PROGRESSIVE] - mean);
    int64_t var = diff*diff;
    int64_t var_except_min = 0;
    if( j != CADENCE_POS_PROGRESSIVE )
    {
        int64_t diff_exm = (int64_t)(pi_ivtc_scores[CADENCE_POS_PROGRESSIVE]
                                      - mean_except_min);
        var_except_min = diff_exm*diff_exm;
    }
    for( int i = imin; i < iend; i++ )
    {
        diff = (int64_t)(pi_ivtc_scores[i] - mean);
        var += (diff*diff);
        if( i != j )
        {
            int64_t diff_exm = (int64_t)(pi_ivtc_scores[i] - mean_except_min);
            var_except_min += (diff_exm*diff_exm);
        }
    }

    var /= (uint64_t)(iend - imin + 1);
    var_except_min /= (uint64_t)(iend - imin);
    int j_curr = p_ivtc->pi_cadence_pos_history[IVTC_LATEST-1];
    int pos_next = pi_detected_pos_to_cadence_pos[j];




    bool b_expected = 0;
    if( j_curr != CADENCE_POS_INVALID )
    {
        int pos_curr = pi_detected_pos_to_cadence_pos[j_curr];
        b_expected = (pos_next == (pos_curr + 1) % 5);
    }




    int i_blocks_with_motion = p_ivtc->pi_motion[IVTC_LATEST];
    bool b_result_reliable =
      ( i_blocks_with_motion > 0 &&
        mean_ratio > 1.005 &&
        ( b_expected || ( (double)var > 1.17*(double)var_except_min ) )
      );
    p_ivtc->pb_s_reliable[IVTC_LATEST] = b_result_reliable;
}
