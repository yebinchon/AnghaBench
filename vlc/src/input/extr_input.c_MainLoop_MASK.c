#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_8__ {scalar_t__ i_int; } ;
struct TYPE_10__ {TYPE_1__ val; } ;
typedef  TYPE_3__ input_control_param_t ;
struct TYPE_11__ {int /*<<< orphan*/ * pf_demux; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_12__ {scalar_t__ i_state; int /*<<< orphan*/  p_es_out; TYPE_2__* master; scalar_t__ b_can_pause; } ;
struct TYPE_9__ {scalar_t__ b_eof; TYPE_4__* p_demux; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,TYPE_3__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,TYPE_3__*,scalar_t__,int) ; 
 scalar_t__ ERROR_S ; 
 int INPUT_CONTROL_SET_STATE ; 
 scalar_t__ INPUT_IDLE_SLEEP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ PAUSE_S ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 () ; 

__attribute__((used)) static void FUNC16( input_thread_t *p_input, bool b_interactive )
{
    vlc_tick_t i_intf_update = 0;
    vlc_tick_t i_last_seek_mdate = 0;

    if( b_interactive && FUNC14( p_input, "start-paused" ) )
        FUNC2( p_input, FUNC15() );

    bool b_pause_after_eof = b_interactive &&
                           FUNC14( p_input, "play-and-pause" );
    bool b_paused_at_eof = false;

    demux_t *p_demux = FUNC12(p_input)->master->p_demux;
    const bool b_can_demux = p_demux->pf_demux != NULL;

    while( !FUNC11( p_input ) && FUNC12(p_input)->i_state != ERROR_S )
    {
        vlc_tick_t i_wakeup = -1;
        bool b_paused = FUNC12(p_input)->i_state == PAUSE_S;
        /* FIXME if input_priv(p_input)->i_state == PAUSE_S the access/access_demux
         * is paused -> this may cause problem with some of them
         * The same problem can be seen when seeking while paused */
        if( b_paused )
            b_paused = !FUNC8( FUNC12(p_input)->p_es_out )
                    || FUNC12(p_input)->master->b_eof;

        if( !b_paused )
        {
            if( !FUNC12(p_input)->master->b_eof )
            {
                bool b_force_update = false;

                FUNC4( p_input, &b_force_update );

                if( b_can_demux )
                    i_wakeup = FUNC10( FUNC12(p_input)->p_es_out );
                if( b_force_update )
                    i_intf_update = 0;

                b_paused_at_eof = false;
            }
            else if( !FUNC9( FUNC12(p_input)->p_es_out ) )
            {
                FUNC13( p_input, "waiting decoder fifos to empty" );
                i_wakeup = FUNC15() + INPUT_IDLE_SLEEP;
            }
            /* Pause after eof only if the input is pausable.
             * This way we won't trigger timeshifting for nothing */
            else if( b_pause_after_eof && FUNC12(p_input)->b_can_pause )
            {
                if( b_paused_at_eof )
                    break;

                input_control_param_t param;
                param.val.i_int = PAUSE_S;

                FUNC13( p_input, "pausing at EOF (pause after each)");
                FUNC0( p_input, INPUT_CONTROL_SET_STATE, param );

                b_paused = true;
                b_paused_at_eof = true;
            }
            else
            {
                if( FUNC6( p_input ) )
                    break;
            }

            /* Update interface and statistics */
            vlc_tick_t now = FUNC15();
            if( now >= i_intf_update )
            {
                FUNC5( p_input );
                i_intf_update = now + FUNC7(250);
            }
        }

        /* Handle control */
        for( ;; )
        {
            vlc_tick_t i_deadline = i_wakeup;

            /* Postpone seeking until ES buffering is complete or at most
             * 125 ms. */
            bool b_postpone = FUNC8( FUNC12(p_input)->p_es_out )
                            && !FUNC12(p_input)->master->b_eof;
            if( b_postpone )
            {
                vlc_tick_t now = FUNC15();

                /* Recheck ES buffer level every 20 ms when seeking */
                if( now < i_last_seek_mdate + FUNC7(125)
                 && (i_deadline < 0 || i_deadline > now + FUNC7(20)) )
                    i_deadline = now + FUNC7(20);
                else
                    b_postpone = false;
            }

            int i_type;
            input_control_param_t param;

            if( FUNC3( p_input, &i_type, &param, i_deadline, b_postpone ) )
            {
                if( b_postpone )
                    continue;
                break; /* Wake-up time reached */
            }

#ifndef NDEBUG
            FUNC13( p_input, "control type=%d", i_type );
#endif
            if( FUNC0( p_input, i_type, param ) )
            {
                if( FUNC1( i_type ) )
                    i_last_seek_mdate = FUNC15();
                i_intf_update = 0;
            }

            /* Update the wakeup time */
            if( i_wakeup != 0 )
                i_wakeup = FUNC10( FUNC12(p_input)->p_es_out );
        }
    }
}