
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ f_float; } ;
typedef TYPE_1__ vlc_value_t ;
typedef scalar_t__ vlc_tick_t ;
struct TYPE_16__ {scalar_t__ i_buffering_delay; scalar_t__ i_rate_date; scalar_t__ i_rate_delay; scalar_t__ rate_source; scalar_t__ rate; scalar_t__ i_cmd_delay; int p_out; int lock; int p_input; int wait; int b_paused; } ;
typedef TYPE_2__ ts_thread_t ;
struct TYPE_17__ {scalar_t__ i_date; int i_type; } ;
typedef TYPE_3__ ts_cmd_t ;






 int CmdCleanAdd (TYPE_3__*) ;
 int CmdCleanControl (TYPE_3__*) ;
 int CmdCleanSend (TYPE_3__*) ;
 int CmdExecuteAdd (int ,TYPE_3__*) ;
 int CmdExecuteControl (int ,TYPE_3__*) ;
 int CmdExecuteDel (int ,TYPE_3__*) ;
 int CmdExecuteSend (int ,TYPE_3__*) ;
 int INPUT_CONTROL_SET_RATE ;
 int TsPopCmdLocked (TYPE_2__*,TYPE_3__*,int) ;
 int cmd_cleanup_routine ;
 int es_out_GetBuffering (int ) ;
 int es_out_SetRate (int ,scalar_t__,scalar_t__) ;
 int input_ControlPushHelper (int ,int ,TYPE_1__*) ;
 int msg_Warn (int ,char*,scalar_t__) ;
 int mutex_cleanup_push (int *) ;
 int vlc_assert_unreachable () ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int ,TYPE_3__*) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int const) ;
 int vlc_savecancel () ;
 int vlc_tick_wait (scalar_t__) ;

__attribute__((used)) static void *TsRun( void *p_data )
{
    ts_thread_t *p_ts = p_data;
    vlc_tick_t i_buffering_date = -1;

    for( ;; )
    {
        ts_cmd_t cmd;
        vlc_tick_t i_deadline;
        bool b_buffering;


        vlc_mutex_lock( &p_ts->lock );
        mutex_cleanup_push( &p_ts->lock );

        for( ;; )
        {
            const int canc = vlc_savecancel();
            b_buffering = es_out_GetBuffering( p_ts->p_out );

            if( ( !p_ts->b_paused || b_buffering ) && !TsPopCmdLocked( p_ts, &cmd, 0 ) )
            {
                vlc_restorecancel( canc );
                break;
            }
            vlc_restorecancel( canc );

            vlc_cond_wait( &p_ts->wait, &p_ts->lock );
        }

        if( b_buffering && i_buffering_date < 0 )
        {
            i_buffering_date = cmd.i_date;
        }
        else if( i_buffering_date > 0 )
        {
            p_ts->i_buffering_delay += i_buffering_date - cmd.i_date;
            if( b_buffering )
                i_buffering_date = cmd.i_date;
            else
                i_buffering_date = -1;
        }

        if( p_ts->i_rate_date < 0 )
            p_ts->i_rate_date = cmd.i_date;

        p_ts->i_rate_delay = 0;
        if( p_ts->rate_source != p_ts->rate )
        {
            const vlc_tick_t i_duration = cmd.i_date - p_ts->i_rate_date;
            p_ts->i_rate_delay = i_duration * p_ts->rate_source / p_ts->rate - i_duration;
        }
        if( p_ts->i_cmd_delay + p_ts->i_rate_delay + p_ts->i_buffering_delay < 0 && p_ts->rate != p_ts->rate_source )
        {
            const int canc = vlc_savecancel();


            msg_Warn( p_ts->p_input, "es out timeshift: auto reset rate to %f", p_ts->rate_source );

            p_ts->i_cmd_delay = 0;
            p_ts->i_buffering_delay = 0;

            p_ts->i_rate_delay = 0;
            p_ts->i_rate_date = -1;
            p_ts->rate = p_ts->rate_source;

            if( !es_out_SetRate( p_ts->p_out, p_ts->rate_source, p_ts->rate ) )
            {
                vlc_value_t val = { .f_float = p_ts->rate };



                input_ControlPushHelper( p_ts->p_input, INPUT_CONTROL_SET_RATE, &val );
            }

            vlc_restorecancel( canc );
        }
        i_deadline = cmd.i_date + p_ts->i_cmd_delay + p_ts->i_rate_delay + p_ts->i_buffering_delay;

        vlc_cleanup_pop();
        vlc_mutex_unlock( &p_ts->lock );



        vlc_cleanup_push( cmd_cleanup_routine, &cmd );

        vlc_tick_wait( i_deadline );

        vlc_cleanup_pop();


        const int canc = vlc_savecancel();
        switch( cmd.i_type )
        {
        case 131:
            CmdExecuteAdd( p_ts->p_out, &cmd );
            CmdCleanAdd( &cmd );
            break;
        case 128:
            CmdExecuteSend( p_ts->p_out, &cmd );
            CmdCleanSend( &cmd );
            break;
        case 130:
            CmdExecuteControl( p_ts->p_out, &cmd );
            CmdCleanControl( &cmd );
            break;
        case 129:
            CmdExecuteDel( p_ts->p_out, &cmd );
            break;
        default:
            vlc_assert_unreachable();
            break;
        }
        vlc_restorecancel( canc );
    }

    return ((void*)0);
}
