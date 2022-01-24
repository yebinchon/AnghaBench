#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_53__   TYPE_9__ ;
typedef  struct TYPE_52__   TYPE_8__ ;
typedef  struct TYPE_51__   TYPE_7__ ;
typedef  struct TYPE_50__   TYPE_6__ ;
typedef  struct TYPE_49__   TYPE_5__ ;
typedef  struct TYPE_48__   TYPE_4__ ;
typedef  struct TYPE_47__   TYPE_3__ ;
typedef  struct TYPE_46__   TYPE_2__ ;
typedef  struct TYPE_45__   TYPE_1__ ;

/* Type definitions */
struct TYPE_49__ {TYPE_4__* p_stream; TYPE_1__* p_pat; } ;
struct TYPE_46__ {scalar_t__ i_fourcc; } ;
struct TYPE_50__ {int type; int i_pid; int i_flags; TYPE_5__ u; TYPE_2__ probed; } ;
typedef  TYPE_6__ ts_pid_t ;
typedef  scalar_t__ stime_t ;
struct TYPE_51__ {TYPE_8__* p_sys; } ;
typedef  TYPE_7__ demux_t ;
struct TYPE_47__ {scalar_t__ status; int i_timesourcepid; } ;
struct TYPE_52__ {scalar_t__ i_pmt_es; unsigned int i_ts_read; int b_start_record; int b_valid_scrambling; int b_end_preparse; int /*<<< orphan*/  b_access_control; int /*<<< orphan*/  seltype; int /*<<< orphan*/  es_creation; TYPE_3__ patfix; int /*<<< orphan*/  stream; } ;
typedef  TYPE_8__ demux_sys_t ;
struct TYPE_53__ {scalar_t__ i_buffer; int* p_buffer; int i_flags; } ;
typedef  TYPE_9__ block_t ;
struct TYPE_48__ {int /*<<< orphan*/  transport; } ;
struct TYPE_45__ {int b_generated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,TYPE_6__*,int) ; 
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_SCRAMBLED ; 
 int /*<<< orphan*/  DELAY_ES ; 
 int FLAG_FILTERED ; 
 int FLAG_SEEN ; 
 int FUNC1 (TYPE_7__*,TYPE_6__*,TYPE_9__*,int) ; 
 int FUNC2 (TYPE_7__*,TYPE_6__*,TYPE_9__*,int) ; 
 scalar_t__ FUNC3 (TYPE_9__*) ; 
 TYPE_6__* FUNC4 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 scalar_t__ PAT_FIXTRIED ; 
 scalar_t__ PAT_MISSING ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*) ; 
 int /*<<< orphan*/  PROGRAM_ALL ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_6__*,int*,int,int) ; 
 TYPE_9__* FUNC9 (TYPE_7__*,TYPE_6__*,TYPE_9__*,int*) ; 
 TYPE_9__* FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  STREAM_SET_RECORD_STATE ; 
 int TS_HEADER_SIZE ; 
 scalar_t__ TS_PACKET_SIZE_188 ; 
 int /*<<< orphan*/  TS_TRANSPORT_PES ; 
 int /*<<< orphan*/  TS_TRANSPORT_SECTIONS ; 
#define  TYPE_CAT 133 
 int TYPE_FREE ; 
#define  TYPE_PAT 132 
#define  TYPE_PMT 131 
#define  TYPE_PSIP 130 
#define  TYPE_SI 129 
#define  TYPE_STREAM 128 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*,TYPE_6__*,int) ; 
 int VLC_DEMUXER_EOF ; 
 int VLC_DEMUXER_SUCCESS ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,int*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,int*) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC23( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    bool b_wait_es = p_sys->i_pmt_es <= 0;

    /* If we had no PAT within MIN_PAT_INTERVAL, create PAT/PMT from probed streams */
    if( p_sys->i_pmt_es == 0 && !FUNC12(FUNC4(p_sys, 0)) && p_sys->patfix.status == PAT_MISSING )
    {
        FUNC5( p_demux );
        p_sys->patfix.status = PAT_FIXTRIED;
        FUNC4(p_sys, 0)->u.p_pat->b_generated = true;
    }

    /* We read at most 100 TS packet or until a frame is completed */
    for( unsigned i_pkt = 0; i_pkt < p_sys->i_ts_read; i_pkt++ )
    {
        bool         b_frame = false;
        int          i_header = 0;
        block_t     *p_pkt;
        if( !(p_pkt = FUNC10( p_demux )) )
        {
            return VLC_DEMUXER_EOF;
        }

        if( p_sys->b_start_record )
        {
            /* Enable recording once synchronized */
            FUNC22( p_sys->stream, STREAM_SET_RECORD_STATE, true,
                                "ts" );
            p_sys->b_start_record = false;
        }

        /* Early reject truncated packets from hw devices */
        if( FUNC21(p_pkt->i_buffer < TS_PACKET_SIZE_188) )
        {
            FUNC15( p_pkt );
            continue;
        }

        /* Reject any fully uncorrected packet. Even PID can be incorrect */
        if( p_pkt->p_buffer[1]&0x80 )
        {
            FUNC17( p_demux, "transport_error_indicator set (pid=%d)",
                     FUNC7( p_pkt ) );
            FUNC15( p_pkt );
            continue;
        }

        /* Parse the TS packet */
        ts_pid_t *p_pid = FUNC4( p_sys, FUNC7( p_pkt ) );
        if( !FUNC12(p_pid) )
        {
            if( p_pid->type == TYPE_FREE )
                FUNC17( p_demux, "pid[%d] unknown", p_pid->i_pid );
            p_pid->i_flags |= FLAG_SEEN;
            if( p_pid->i_pid == 0x01 )
                p_sys->b_valid_scrambling = true;
        }

        /* Drop duplicates and invalid (DOES NOT drop corrupted) */
        p_pkt = FUNC9( p_demux, p_pid, p_pkt, &i_header );
        if( !p_pkt )
            continue;

        if( !FUNC11(*p_pid) != !(p_pkt->i_flags & BLOCK_FLAG_SCRAMBLED) )
        {
            FUNC14( p_demux, p_pid, p_pkt->i_flags & BLOCK_FLAG_SCRAMBLED );
        }

        /* Adaptation field cannot be scrambled */
        stime_t i_pcr = FUNC3( p_pkt );
        if( i_pcr >= 0 )
            FUNC6( p_demux, p_pid, i_pcr );

        /* Probe streams to build PAT/PMT after MIN_PAT_INTERVAL in case we don't see any PAT */
        if( !FUNC12( FUNC4( p_sys, 0 ) ) &&
            (p_pid->probed.i_fourcc == 0 || p_pid->i_pid == p_sys->patfix.i_timesourcepid) &&
            (p_pkt->p_buffer[1] & 0xC0) == 0x40 && /* Payload start but not corrupt */
            (p_pkt->p_buffer[3] & 0xD0) == 0x10 )  /* Has payload but is not encrypted */
        {
            FUNC8( p_demux, p_pid, p_pkt->p_buffer + TS_HEADER_SIZE,
                      p_pkt->i_buffer - TS_HEADER_SIZE, p_pkt->p_buffer[3] & 0x20 /* Adaptation field */);
        }

        switch( p_pid->type )
        {
        case TYPE_PAT:
        case TYPE_PMT:
            /* PAT and PMT are not allowed to be scrambled */
            FUNC18( p_pid, p_pkt->p_buffer );
            FUNC15( p_pkt );
            break;

        case TYPE_STREAM:
            p_sys->b_end_preparse = true;

            if( p_sys->es_creation == DELAY_ES ) /* No longer delay ES since that pid's program sends data */
            {
                FUNC17( p_demux, "Creating delayed ES" );
                FUNC0( p_demux, p_pid, true );
                FUNC13( p_demux, p_sys->seltype == PROGRAM_ALL );
            }

            /* Emulate HW filter */
            if( !p_sys->b_access_control && !(p_pid->i_flags & FLAG_FILTERED) )
            {
                /* That packet is for an unselected ES, don't waste time/memory gathering its data */
                FUNC15( p_pkt );
                continue;
            }

            if( p_pid->u.p_stream->transport == TS_TRANSPORT_PES )
            {
                b_frame = FUNC1( p_demux, p_pid, p_pkt, i_header );
            }
            else if( p_pid->u.p_stream->transport == TS_TRANSPORT_SECTIONS )
            {
                b_frame = FUNC2( p_demux, p_pid, p_pkt, i_header );
            }
            else // pid->u.p_pes->transport == TS_TRANSPORT_IGNORE
            {
                FUNC15( p_pkt );
            }

            break;

        case TYPE_SI:
            if( (p_pkt->i_flags & (BLOCK_FLAG_SCRAMBLED|BLOCK_FLAG_CORRUPTED)) == 0 )
                FUNC20( p_pid, p_pkt->p_buffer );
            FUNC15( p_pkt );
            break;

        case TYPE_PSIP:
            if( (p_pkt->i_flags & (BLOCK_FLAG_SCRAMBLED|BLOCK_FLAG_CORRUPTED)) == 0 )
                FUNC19( p_pid, p_pkt->p_buffer );
            FUNC15( p_pkt );
            break;

        case TYPE_CAT:
        default:
            /* We have to handle PCR if present */
            FUNC15( p_pkt );
            break;
        }

        if( b_frame || ( b_wait_es && p_sys->i_pmt_es > 0 ) )
            break;
    }

    FUNC16( p_demux );
    return VLC_DEMUXER_SUCCESS;
}