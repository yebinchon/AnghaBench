
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* pi_v_cadence_pos; int* pi_s_cadence_pos; int* pi_cadence_pos_history; scalar_t__* pb_s_reliable; scalar_t__* pb_v_reliable; } ;
typedef TYPE_1__ ivtc_sys_t ;
struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_7__ {TYPE_1__ ivtc; } ;
typedef TYPE_3__ filter_sys_t ;


 int CADENCE_POS_INVALID ;
 size_t IVTC_LATEST ;
 int assert (int ) ;

__attribute__((used)) static void IVTCCadenceDetectFinalize( filter_t *p_filter )
{
    assert( p_filter != ((void*)0) );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc = &p_sys->ivtc;
    int pos = CADENCE_POS_INVALID;
    if( p_ivtc->pb_v_reliable[IVTC_LATEST] )
        pos = p_ivtc->pi_v_cadence_pos[IVTC_LATEST];
    else if( p_ivtc->pb_s_reliable[IVTC_LATEST] )
        pos = p_ivtc->pi_s_cadence_pos[IVTC_LATEST];
    p_ivtc->pi_cadence_pos_history[IVTC_LATEST] = pos;
}
