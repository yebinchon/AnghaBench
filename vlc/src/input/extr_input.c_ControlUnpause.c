
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int input_thread_t ;
typedef int demux_t ;
struct TYPE_4__ {int p_es_out; TYPE_1__* master; scalar_t__ b_can_pause; } ;
struct TYPE_3__ {int * p_demux; } ;


 int DEMUX_SET_PAUSE_STATE ;
 int ERROR_S ;
 int PLAYING_S ;
 scalar_t__ demux_Control (int *,int ,int) ;
 int es_out_SetPauseState (int ,int,int,int ) ;
 int input_ChangeState (int *,int ,int ) ;
 TYPE_2__* input_priv (int *) ;
 int msg_Err (int *,char*) ;

__attribute__((used)) static void ControlUnpause( input_thread_t *p_input, vlc_tick_t i_control_date )
{
    if( input_priv(p_input)->b_can_pause )
    {
        demux_t *p_demux = input_priv(p_input)->master->p_demux;

        if( demux_Control( p_demux, DEMUX_SET_PAUSE_STATE, 0 ) )
        {
            msg_Err( p_input, "cannot resume" );
            input_ChangeState( p_input, ERROR_S, i_control_date );
            return;
        }
    }


    input_ChangeState( p_input, PLAYING_S, i_control_date );
    es_out_SetPauseState( input_priv(p_input)->p_es_out, 0, 0, i_control_date );
}
