
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int b_top_field_first; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_9__ {int* pi_top_rep; int* pi_bot_rep; int* pi_v_raw; int* pb_v_reliable; scalar_t__* pi_v_cadence_pos; } ;
typedef TYPE_3__ ivtc_sys_t ;
typedef scalar_t__ ivtc_cadence_pos ;
struct TYPE_10__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_7__ {TYPE_2__** pp_history; } ;
struct TYPE_11__ {TYPE_1__ context; TYPE_3__ ivtc; } ;
typedef TYPE_5__ filter_sys_t ;


 size_t CADENCE_POS_BFF_ABC ;
 size_t CADENCE_POS_BFF_BCD ;
 size_t CADENCE_POS_BFF_CDE ;
 size_t CADENCE_POS_BFF_EAB ;
 scalar_t__ CADENCE_POS_INVALID ;
 size_t CADENCE_POS_PROGRESSIVE ;
 size_t CADENCE_POS_TFF_ABC ;
 size_t CADENCE_POS_TFF_BCD ;
 size_t CADENCE_POS_TFF_CDE ;
 size_t CADENCE_POS_TFF_EAB ;
 size_t IVTC_LATEST ;
 int NUM_CADENCE_POS ;
 int VEKTOR_CADENCE_POS_ALL ;
 int VEKTOR_CADENCE_POS_BFF ;
 int VEKTOR_CADENCE_POS_BFF_HIGH ;
 int VEKTOR_CADENCE_POS_BFF_LOW ;
 int VEKTOR_CADENCE_POS_TFF ;
 int VEKTOR_CADENCE_POS_TFF_HIGH ;
 int VEKTOR_CADENCE_POS_TFF_LOW ;
 int assert (int ) ;
 int* pi_detected_pos_to_bitmask ;

__attribute__((used)) static void IVTCCadenceDetectAlgoVektor( filter_t *p_filter )
{
    assert( p_filter != ((void*)0) );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc = &p_sys->ivtc;

    picture_t *p_next = p_sys->context.pp_history[2];

    assert( p_next != ((void*)0) );
    int detected = 0;
    detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_PROGRESSIVE ];





    bool b_top_rep = p_ivtc->pi_top_rep[IVTC_LATEST];
    bool b_bot_rep = p_ivtc->pi_bot_rep[IVTC_LATEST];
    bool b_old_top_rep = p_ivtc->pi_top_rep[IVTC_LATEST-1];
    bool b_old_bot_rep = p_ivtc->pi_bot_rep[IVTC_LATEST-1];
    if( b_top_rep )
    {
        detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_TFF_EAB ];
        detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_BFF_BCD ];
    }
    if( b_old_top_rep )
    {
        detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_TFF_ABC ];
        detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_BFF_CDE ];
    }
    if( b_bot_rep )
    {
        detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_TFF_BCD ];
        detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_BFF_EAB ];
    }
    if( b_old_bot_rep )
    {
        detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_TFF_CDE ];
        detected |= pi_detected_pos_to_bitmask[ CADENCE_POS_BFF_ABC ];
    }







    bool b_tff = p_next->b_top_field_first;
    if( b_tff )
        detected &= VEKTOR_CADENCE_POS_TFF;
    else
        detected &= VEKTOR_CADENCE_POS_BFF;



    int predicted = p_ivtc->pi_v_raw[IVTC_LATEST-1];
    bool b_wrap_tff = 0;
    bool b_wrap_bff = 0;
    if( predicted & VEKTOR_CADENCE_POS_TFF_HIGH )
        b_wrap_tff = 1;
    if( predicted & VEKTOR_CADENCE_POS_BFF_HIGH )
        b_wrap_bff = 1;

    predicted = (predicted << 1) & VEKTOR_CADENCE_POS_ALL;

    if( b_wrap_tff )
        predicted |= VEKTOR_CADENCE_POS_TFF_LOW;
    if( b_wrap_bff )
        predicted |= VEKTOR_CADENCE_POS_BFF_LOW;





    if( (detected & predicted) != 0 )
        detected = detected & predicted;
    else
        detected = VEKTOR_CADENCE_POS_ALL;
    p_ivtc->pi_v_raw[IVTC_LATEST] = detected;



    ivtc_cadence_pos exact = CADENCE_POS_INVALID;
    if( detected != 0 )
    {
        for( int i = 0; i < NUM_CADENCE_POS; i++ )
        {



            if( detected == (detected & pi_detected_pos_to_bitmask[i]) )
            {
                exact = i;
                break;
            }
        }
    }







    p_ivtc->pi_v_cadence_pos[IVTC_LATEST] = exact;
    p_ivtc->pb_v_reliable[IVTC_LATEST] = (exact != CADENCE_POS_INVALID);
}
