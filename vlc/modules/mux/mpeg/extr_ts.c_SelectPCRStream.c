
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int i_nb_inputs; TYPE_5__** pp_inputs; TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_mux_t ;
struct TYPE_13__ {TYPE_5__* p_pcr_input; } ;
typedef TYPE_4__ sout_mux_sys_t ;
struct TYPE_14__ {scalar_t__ p_sys; TYPE_1__* p_fmt; } ;
typedef TYPE_5__ sout_input_t ;
struct TYPE_11__ {int i_pid; } ;
struct TYPE_15__ {TYPE_2__ ts; } ;
typedef TYPE_6__ sout_input_sys_t ;
struct TYPE_10__ {scalar_t__ i_cat; } ;


 scalar_t__ SPU_ES ;
 scalar_t__ VIDEO_ES ;
 int msg_Dbg (TYPE_3__*,char*,int ) ;

__attribute__((used)) static void SelectPCRStream( sout_mux_t *p_mux, sout_input_t *p_removed_pcr_input )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;


    if( p_removed_pcr_input != ((void*)0) )
        p_sys->p_pcr_input = ((void*)0);

    for ( int i = 0; i < p_mux->i_nb_inputs; i++ )
    {
        sout_input_t *p_input = p_mux->pp_inputs[i];
        if( p_input == p_removed_pcr_input )
            continue;

        if( p_input->p_fmt->i_cat == VIDEO_ES &&
           (p_sys->p_pcr_input == ((void*)0) ||
            p_sys->p_pcr_input->p_fmt->i_cat != VIDEO_ES) )
        {
            p_sys->p_pcr_input = p_input;
            break;
        }
        else if( p_input->p_fmt->i_cat != SPU_ES &&
                 p_sys->p_pcr_input == ((void*)0) )
        {
            p_sys->p_pcr_input = p_input;
        }
    }

    if( p_sys->p_pcr_input )
    {


        msg_Dbg( p_mux, "new PCR PID is %d",
                 ((sout_input_sys_t *)p_sys->p_pcr_input->p_sys)->ts.i_pid );
    }

}
