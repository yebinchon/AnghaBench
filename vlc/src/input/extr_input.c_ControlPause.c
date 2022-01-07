
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int input_thread_t ;
typedef int demux_t ;
struct TYPE_4__ {scalar_t__ b_can_pause; int p_es_out; TYPE_1__* master; } ;
struct TYPE_3__ {int * p_demux; } ;


 int DEMUX_SET_PAUSE_STATE ;
 int PAUSE_S ;
 scalar_t__ demux_Control (int *,int ,int) ;
 scalar_t__ es_out_SetPauseState (int ,scalar_t__,int,int ) ;
 int input_ChangeState (int *,int,int ) ;
 TYPE_2__* input_priv (int *) ;
 int msg_Warn (int *,char*) ;

__attribute__((used)) static void ControlPause( input_thread_t *p_input, vlc_tick_t i_control_date )
{
    int i_state = PAUSE_S;

    if( input_priv(p_input)->b_can_pause )
    {
        demux_t *p_demux = input_priv(p_input)->master->p_demux;

        if( demux_Control( p_demux, DEMUX_SET_PAUSE_STATE, 1 ) )
        {
            msg_Warn( p_input, "cannot set pause state" );
            return;
        }
    }


    if( es_out_SetPauseState( input_priv(p_input)->p_es_out, input_priv(p_input)->b_can_pause,
                              1, i_control_date ) )
    {
        msg_Warn( p_input, "cannot set pause state at es_out level" );
        return;
    }


    input_ChangeState( p_input, i_state, i_control_date );
}
