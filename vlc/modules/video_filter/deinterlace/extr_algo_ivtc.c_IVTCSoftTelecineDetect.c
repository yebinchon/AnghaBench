
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int i_nb_fields; int b_top_field_first; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_10__ {scalar_t__ i_mode; scalar_t__ i_old_mode; int i_tfd; scalar_t__ i_cadence_pos; } ;
typedef TYPE_3__ ivtc_sys_t ;
struct TYPE_11__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ filter_t ;
struct TYPE_8__ {TYPE_2__** pp_history; } ;
struct TYPE_12__ {TYPE_1__ context; TYPE_3__ ivtc; } ;
typedef TYPE_5__ filter_sys_t ;


 scalar_t__ CADENCE_POS_INVALID ;
 scalar_t__ IVTC_MODE_TELECINED_NTSC_SOFT ;
 int TFD_INVALID ;
 int assert (int ) ;
 int msg_Dbg (TYPE_4__*,char*) ;

__attribute__((used)) static void IVTCSoftTelecineDetect( filter_t *p_filter )
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
    bool b_soft_telecine_1 = (p_prev->i_nb_fields == 2) &&
                             (p_curr->i_nb_fields == 3) &&
                             (p_next->i_nb_fields == 2);

    bool b_soft_telecine_2 = (p_prev->i_nb_fields == 3) &&
                             (p_curr->i_nb_fields == 2) &&
                             (p_next->i_nb_fields == 3);


    bool b_soft_telecine_3 = (p_prev->i_nb_fields == 3) &&
                             (p_curr->i_nb_fields == 2) &&
                             (p_next->i_nb_fields == 2);




    if( b_soft_telecine_1 || b_soft_telecine_2 || b_soft_telecine_3 )
    {
        if( p_ivtc->i_mode != IVTC_MODE_TELECINED_NTSC_SOFT )
        {
            msg_Dbg( p_filter, "IVTC: 3:2 pulldown: NTSC soft telecine " "detected." );

            p_ivtc->i_old_mode = p_ivtc->i_mode;
        }


        p_ivtc->i_mode = IVTC_MODE_TELECINED_NTSC_SOFT;


        p_ivtc->i_cadence_pos = CADENCE_POS_INVALID;
        p_ivtc->i_tfd = TFD_INVALID;
    }

    else if( p_ivtc->i_mode == IVTC_MODE_TELECINED_NTSC_SOFT )
    {
        msg_Dbg( p_filter, "IVTC: 3:2 pulldown: NTSC soft telecine ended. " "Returning to previous mode." );
        p_ivtc->i_mode = p_ivtc->i_old_mode;
        p_ivtc->i_cadence_pos = 0;



        p_ivtc->i_tfd = !p_next->b_top_field_first;
    }
}
