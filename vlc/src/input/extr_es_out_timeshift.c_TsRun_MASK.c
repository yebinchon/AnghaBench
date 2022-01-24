#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ f_float; } ;
typedef  TYPE_1__ vlc_value_t ;
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_16__ {scalar_t__ i_buffering_delay; scalar_t__ i_rate_date; scalar_t__ i_rate_delay; scalar_t__ rate_source; scalar_t__ rate; scalar_t__ i_cmd_delay; int /*<<< orphan*/  p_out; int /*<<< orphan*/  lock; int /*<<< orphan*/  p_input; int /*<<< orphan*/  wait; int /*<<< orphan*/  b_paused; } ;
typedef  TYPE_2__ ts_thread_t ;
struct TYPE_17__ {scalar_t__ i_date; int i_type; } ;
typedef  TYPE_3__ ts_cmd_t ;

/* Variables and functions */
#define  C_ADD 131 
#define  C_CONTROL 130 
#define  C_DEL 129 
#define  C_SEND 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  INPUT_CONTROL_SET_RATE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  cmd_cleanup_routine ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int const) ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 

__attribute__((used)) static void *FUNC22( void *p_data )
{
    ts_thread_t *p_ts = p_data;
    vlc_tick_t i_buffering_date = -1;

    for( ;; )
    {
        ts_cmd_t cmd;
        vlc_tick_t  i_deadline;
        bool b_buffering;

        /* Pop a command to execute */
        FUNC17( &p_ts->lock );
        FUNC12( &p_ts->lock );

        for( ;; )
        {
            const int canc = FUNC20();
            b_buffering = FUNC8( p_ts->p_out );

            if( ( !p_ts->b_paused || b_buffering ) && !FUNC7( p_ts, &cmd, false ) )
            {
                FUNC19( canc );
                break;
            }
            FUNC19( canc );

            FUNC16( &p_ts->wait, &p_ts->lock );
        }

        if( b_buffering && i_buffering_date < 0 )
        {
            i_buffering_date = cmd.i_date;
        }
        else if( i_buffering_date > 0 )
        {
            p_ts->i_buffering_delay += i_buffering_date - cmd.i_date; /* It is < 0 */
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
            const int canc = FUNC20();

            /* Auto reset to rate 1.0 */
            FUNC11( p_ts->p_input, "es out timeshift: auto reset rate to %f", p_ts->rate_source );

            p_ts->i_cmd_delay = 0;
            p_ts->i_buffering_delay = 0;

            p_ts->i_rate_delay = 0;
            p_ts->i_rate_date = -1;
            p_ts->rate = p_ts->rate_source;

            if( !FUNC9( p_ts->p_out, p_ts->rate_source, p_ts->rate ) )
            {
                vlc_value_t val = { .f_float = p_ts->rate };
                /* Warn back input
                 * FIXME it is perfectly safe BUT it is ugly as it may hide a
                 * rate change requested by user */
                FUNC10( p_ts->p_input, INPUT_CONTROL_SET_RATE, &val );
            }

            FUNC19( canc );
        }
        i_deadline = cmd.i_date + p_ts->i_cmd_delay + p_ts->i_rate_delay + p_ts->i_buffering_delay;

        FUNC14();
        FUNC18( &p_ts->lock );

        /* Regulate the speed of command processing to the same one than
         * reading  */
        FUNC15( cmd_cleanup_routine, &cmd );

        FUNC21( i_deadline );

        FUNC14();

        /* Execute the command  */
        const int canc = FUNC20();
        switch( cmd.i_type )
        {
        case C_ADD:
            FUNC3( p_ts->p_out, &cmd );
            FUNC0( &cmd );
            break;
        case C_SEND:
            FUNC6( p_ts->p_out, &cmd );
            FUNC2( &cmd );
            break;
        case C_CONTROL:
            FUNC4( p_ts->p_out, &cmd );
            FUNC1( &cmd );
            break;
        case C_DEL:
            FUNC5( p_ts->p_out, &cmd );
            break;
        default:
            FUNC13();
            break;
        }
        FUNC19( canc );
    }

    return NULL;
}