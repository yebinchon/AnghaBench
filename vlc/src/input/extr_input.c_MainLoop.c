
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_8__ {scalar_t__ i_int; } ;
struct TYPE_10__ {TYPE_1__ val; } ;
typedef TYPE_3__ input_control_param_t ;
struct TYPE_11__ {int * pf_demux; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_12__ {scalar_t__ i_state; int p_es_out; TYPE_2__* master; scalar_t__ b_can_pause; } ;
struct TYPE_9__ {scalar_t__ b_eof; TYPE_4__* p_demux; } ;


 scalar_t__ Control (int *,int,TYPE_3__) ;
 scalar_t__ ControlIsSeekRequest (int) ;
 int ControlPause (int *,scalar_t__) ;
 scalar_t__ ControlPop (int *,int*,TYPE_3__*,scalar_t__,int) ;
 scalar_t__ ERROR_S ;
 int INPUT_CONTROL_SET_STATE ;
 scalar_t__ INPUT_IDLE_SLEEP ;
 int MainLoopDemux (int *,int*) ;
 int MainLoopStatistics (int *) ;
 scalar_t__ MainLoopTryRepeat (int *) ;
 scalar_t__ PAUSE_S ;
 scalar_t__ VLC_TICK_FROM_MS (int) ;
 scalar_t__ es_out_GetBuffering (int ) ;
 int es_out_GetEmpty (int ) ;
 scalar_t__ es_out_GetWakeup (int ) ;
 int input_Stopped (int *) ;
 TYPE_5__* input_priv (int *) ;
 int msg_Dbg (int *,char*,...) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void MainLoop( input_thread_t *p_input, bool b_interactive )
{
    vlc_tick_t i_intf_update = 0;
    vlc_tick_t i_last_seek_mdate = 0;

    if( b_interactive && var_InheritBool( p_input, "start-paused" ) )
        ControlPause( p_input, vlc_tick_now() );

    bool b_pause_after_eof = b_interactive &&
                           var_InheritBool( p_input, "play-and-pause" );
    bool b_paused_at_eof = 0;

    demux_t *p_demux = input_priv(p_input)->master->p_demux;
    const bool b_can_demux = p_demux->pf_demux != ((void*)0);

    while( !input_Stopped( p_input ) && input_priv(p_input)->i_state != ERROR_S )
    {
        vlc_tick_t i_wakeup = -1;
        bool b_paused = input_priv(p_input)->i_state == PAUSE_S;



        if( b_paused )
            b_paused = !es_out_GetBuffering( input_priv(p_input)->p_es_out )
                    || input_priv(p_input)->master->b_eof;

        if( !b_paused )
        {
            if( !input_priv(p_input)->master->b_eof )
            {
                bool b_force_update = 0;

                MainLoopDemux( p_input, &b_force_update );

                if( b_can_demux )
                    i_wakeup = es_out_GetWakeup( input_priv(p_input)->p_es_out );
                if( b_force_update )
                    i_intf_update = 0;

                b_paused_at_eof = 0;
            }
            else if( !es_out_GetEmpty( input_priv(p_input)->p_es_out ) )
            {
                msg_Dbg( p_input, "waiting decoder fifos to empty" );
                i_wakeup = vlc_tick_now() + INPUT_IDLE_SLEEP;
            }


            else if( b_pause_after_eof && input_priv(p_input)->b_can_pause )
            {
                if( b_paused_at_eof )
                    break;

                input_control_param_t param;
                param.val.i_int = PAUSE_S;

                msg_Dbg( p_input, "pausing at EOF (pause after each)");
                Control( p_input, INPUT_CONTROL_SET_STATE, param );

                b_paused = 1;
                b_paused_at_eof = 1;
            }
            else
            {
                if( MainLoopTryRepeat( p_input ) )
                    break;
            }


            vlc_tick_t now = vlc_tick_now();
            if( now >= i_intf_update )
            {
                MainLoopStatistics( p_input );
                i_intf_update = now + VLC_TICK_FROM_MS(250);
            }
        }


        for( ;; )
        {
            vlc_tick_t i_deadline = i_wakeup;



            bool b_postpone = es_out_GetBuffering( input_priv(p_input)->p_es_out )
                            && !input_priv(p_input)->master->b_eof;
            if( b_postpone )
            {
                vlc_tick_t now = vlc_tick_now();


                if( now < i_last_seek_mdate + VLC_TICK_FROM_MS(125)
                 && (i_deadline < 0 || i_deadline > now + VLC_TICK_FROM_MS(20)) )
                    i_deadline = now + VLC_TICK_FROM_MS(20);
                else
                    b_postpone = 0;
            }

            int i_type;
            input_control_param_t param;

            if( ControlPop( p_input, &i_type, &param, i_deadline, b_postpone ) )
            {
                if( b_postpone )
                    continue;
                break;
            }


            msg_Dbg( p_input, "control type=%d", i_type );

            if( Control( p_input, i_type, param ) )
            {
                if( ControlIsSeekRequest( i_type ) )
                    i_last_seek_mdate = vlc_tick_now();
                i_intf_update = 0;
            }


            if( i_wakeup != 0 )
                i_wakeup = es_out_GetWakeup( input_priv(p_input)->p_es_out );
        }
    }
}
