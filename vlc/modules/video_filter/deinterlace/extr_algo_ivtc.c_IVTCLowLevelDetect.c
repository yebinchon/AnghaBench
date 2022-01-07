
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_7__ {int* pi_motion; int* pi_top_rep; int* pi_bot_rep; void** pi_scores; } ;
typedef TYPE_2__ ivtc_sys_t ;
struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_6__ {int ** pp_history; } ;
struct TYPE_9__ {TYPE_1__ context; TYPE_2__ ivtc; } ;
typedef TYPE_4__ filter_sys_t ;


 void* CalculateInterlaceScore (int *,int *) ;
 int EstimateNumBlocksWithMotion (int *,int *,int*,int*) ;
 size_t FIELD_PAIR_TCBN ;
 size_t FIELD_PAIR_TNBC ;
 size_t FIELD_PAIR_TNBN ;
 size_t IVTC_LATEST ;
 int assert (int ) ;

__attribute__((used)) static void IVTCLowLevelDetect( filter_t *p_filter )
{
    assert( p_filter != ((void*)0) );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc = &p_sys->ivtc;
    picture_t *p_curr = p_sys->context.pp_history[1];
    picture_t *p_next = p_sys->context.pp_history[2];

    assert( p_next != ((void*)0) );
    assert( p_curr != ((void*)0) );



    p_ivtc->pi_scores[FIELD_PAIR_TNBN] = CalculateInterlaceScore( p_next,
                                                                  p_next );
    p_ivtc->pi_scores[FIELD_PAIR_TNBC] = CalculateInterlaceScore( p_next,
                                                                  p_curr );
    p_ivtc->pi_scores[FIELD_PAIR_TCBN] = CalculateInterlaceScore( p_curr,
                                                                  p_next );

    int i_top = 0, i_bot = 0;
    int i_motion = EstimateNumBlocksWithMotion(p_curr, p_next, &i_top, &i_bot);
    p_ivtc->pi_motion[IVTC_LATEST] = i_motion;
    p_ivtc->pi_top_rep[IVTC_LATEST] = (i_top <= 2*i_bot/3);
    p_ivtc->pi_bot_rep[IVTC_LATEST] = (i_bot <= 2*i_top/3);
}
