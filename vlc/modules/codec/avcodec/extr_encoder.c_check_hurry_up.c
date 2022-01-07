
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int encoder_t ;
struct TYPE_7__ {scalar_t__ b_trellis; TYPE_1__* p_context; int i_hq; } ;
typedef TYPE_2__ encoder_sys_t ;
struct TYPE_8__ {int pict_type; int pts; } ;
struct TYPE_6__ {scalar_t__ trellis; int mb_decision; } ;
typedef TYPE_3__ AVFrame ;


 int AV_PICTURE_TYPE_P ;
 int FF_MB_DECISION_SIMPLE ;
 scalar_t__ FROM_AV_TS (int ) ;
 scalar_t__ HURRY_UP_GUARD1 ;
 scalar_t__ HURRY_UP_GUARD2 ;
 scalar_t__ HURRY_UP_GUARD3 ;
 int msg_Dbg (int *,char*) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void check_hurry_up( encoder_sys_t *p_sys, AVFrame *frame, encoder_t *p_enc )
{
    vlc_tick_t current_date = vlc_tick_now();

    if ( current_date + HURRY_UP_GUARD3 > FROM_AV_TS(frame->pts) )
    {
        p_sys->p_context->mb_decision = FF_MB_DECISION_SIMPLE;
        p_sys->p_context->trellis = 0;
        msg_Dbg( p_enc, "hurry up mode 3" );
    }
    else
    {
        p_sys->p_context->mb_decision = p_sys->i_hq;

        if ( current_date + HURRY_UP_GUARD2 > FROM_AV_TS(frame->pts) )
        {
            p_sys->p_context->trellis = 0;
            msg_Dbg( p_enc, "hurry up mode 2" );
        }
        else
        {
            p_sys->p_context->trellis = p_sys->b_trellis;
        }
    }

    if ( current_date + HURRY_UP_GUARD1 > FROM_AV_TS(frame->pts) )
    {
        frame->pict_type = AV_PICTURE_TYPE_P;

    }
}
