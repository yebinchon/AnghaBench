#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ unsynced; } ;
typedef  TYPE_1__ ogg_sync_state ;
typedef  int /*<<< orphan*/  ogg_stream_state ;
typedef  int /*<<< orphan*/  ogg_page ;
typedef  scalar_t__ int64_t ;
struct TYPE_14__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_15__ {int i_streams; scalar_t__ i_length; TYPE_11__** pp_stream; } ;
typedef  TYPE_3__ demux_sys_t ;
struct TYPE_12__ {scalar_t__ i_serial_no; int /*<<< orphan*/  b_contiguous; } ;

/* Variables and functions */
 int MAX_PAGE_SIZE ; 
 int OGGSEEK_BYTES_TO_READ ; 
 scalar_t__ FUNC0 (TYPE_11__*,scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int UINT_MAX ; 
 scalar_t__ VLC_TICK_0 ; 
 scalar_t__ VLC_TICK_INVALID ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

void FUNC18( demux_t *p_demux )
{
    /* Temporary state */
    ogg_stream_state os;
    ogg_sync_state oy;
    ogg_page page;
    demux_sys_t *p_sys = p_demux->p_sys;
    int64_t i_pos, i_startpos, i_result, i_granule, i_lowerbound;
    int64_t i_length = 0;
    int64_t i_backup_pos = FUNC17( p_demux->s );
    int64_t i_upperbound = FUNC14( p_demux->s );
    unsigned int i_backoffset = OGGSEEK_BYTES_TO_READ;
    FUNC3( OGGSEEK_BYTES_TO_READ < UINT_MAX );

    const char *buffer;

    FUNC7( &os, -1 );
    FUNC10( &oy );

    /* Try to lookup last granule from each logical stream */
    i_lowerbound = FUNC14( p_demux->s ) - p_sys->i_streams * MAX_PAGE_SIZE * 2;
    i_lowerbound = FUNC2( 0, i_lowerbound );

    i_pos = i_startpos = FUNC2( i_lowerbound, i_upperbound - i_backoffset );

    if ( FUNC16( p_demux->s, i_pos ) )
    {
        FUNC9( &oy );
        FUNC6( &os );
        return;
    }

    while( i_pos >= i_lowerbound )
    {

        while( i_pos < i_upperbound )
        {
            if ( oy.unsynced )
                i_result = FUNC12( &oy, &page );

            buffer = FUNC8( &oy, OGGSEEK_BYTES_TO_READ );
            if ( buffer == NULL ) goto clean;
            i_result = FUNC15( p_demux->s, (void*) buffer, OGGSEEK_BYTES_TO_READ );
            if ( i_result < 1 ) goto clean;
            i_pos += i_result;
            FUNC13( &oy, i_result );

            while( FUNC11( &oy, &page ) == 1 )
            {
                i_granule = FUNC4( &page );
                if ( i_granule == -1 ) continue;

                for ( int i=0; i< p_sys->i_streams; i++ )
                {
                    if ( p_sys->pp_stream[i]->i_serial_no != FUNC5( &page ) )
                        continue;

                    i_length = FUNC0( p_sys->pp_stream[i], i_granule,
                                                  !p_sys->pp_stream[i]->b_contiguous, false );
                    if( i_length != VLC_TICK_INVALID )
                    {
                        /* We found at least a page with valid granule */
                        p_sys->i_length = FUNC2( p_sys->i_length, FUNC1(i_length - VLC_TICK_0) );
                        goto clean;
                    }
                    break;
                }
            }
        }

        /* Otherwise increase read size, starting earlier */
        if ( i_backoffset <= ( UINT_MAX >> 1 ) )
        {
            i_backoffset <<= 1;
            i_startpos = i_upperbound - i_backoffset;
        }
        else
        {
            i_startpos -= i_backoffset;
        }
        i_pos = i_startpos;

        if ( FUNC16( p_demux->s, i_pos ) )
            break;
    }

clean:
    FUNC16( p_demux->s, i_backup_pos );

    FUNC9( &oy );
    FUNC6( &os );
}