#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
typedef  int ssize_t ;
struct TYPE_7__ {int /*<<< orphan*/  s; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; TYPE_2__* p_sys; int /*<<< orphan*/  b_preparsing; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_8__ {int i_mux_rate; int i_time_track_index; int i_start_byte; int i_lastpack_byte; int b_lost_sync; int b_have_pack; int b_bad_scr; int b_seekable; int format; int /*<<< orphan*/  tk; int /*<<< orphan*/  psm; scalar_t__ updates; scalar_t__ current_seekpoint; scalar_t__ current_title; scalar_t__ i_aob_mlp_count; void* i_current_pts; void* i_length; scalar_t__ i_scr_track_id; void* i_scr; void* i_first_scr; void* i_pack_scr; } ;
typedef  TYPE_2__ demux_sys_t ;

/* Variables and functions */
 int CDXA_HEADER_SIZE ; 
 int CDXA_PS ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int MPEG_PS ; 
 int PSMF_PS ; 
 unsigned int PS_PACKET_PROBE ; 
 int const PS_STREAM_ID_DIRECTORY ; 
 int const PS_STREAM_ID_EXTENDED ; 
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 void* VLC_TICK_INVALID ; 
 TYPE_2__* FUNC2 (int) ; 
 scalar_t__ FUNC3 (int const*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int const**,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14( vlc_object_t *p_this, bool b_force )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;

    const uint8_t *p_peek;
    ssize_t i_peek = 0;
    ssize_t i_offset = 0;
    ssize_t i_skip = 0;
    unsigned i_max_packets = PS_PACKET_PROBE;
    int format = MPEG_PS;
    int i_mux_rate = 0;
    vlc_tick_t i_length = VLC_TICK_INVALID;

    i_peek = FUNC11( p_demux->s, &p_peek, 16 );
    if( i_peek < 16 )
    {
        FUNC4( p_demux, "cannot peek" );
        return VLC_EGENERIC;
    }

    if( !FUNC3( p_peek, "PSMF", 4 ) &&
        (FUNC0( &p_peek[4] ) & 0x30303030) == 0x30303030 )
    {
        i_peek = FUNC11( p_demux->s, &p_peek, 100 );
        if( i_peek < 100 )
            return VLC_EGENERIC;
        i_skip = i_offset = FUNC1( &p_peek[10] );
        format = PSMF_PS;
        FUNC5( p_demux, "Detected PSMF-PS header");
        i_mux_rate = FUNC0( &p_peek[96] );
        if( FUNC0( &p_peek[86] ) > 0 )
            i_length = FUNC13( FUNC0( &p_peek[92] ), FUNC0( &p_peek[86] ));
    }
    else if( !FUNC3( p_peek, "RIFF", 4 ) && !FUNC3( &p_peek[8], "CDXA", 4 ) )
    {
        format = CDXA_PS;
        i_max_packets = 0; /* We can't probe here */
        i_skip = CDXA_HEADER_SIZE;
        FUNC5( p_demux, "Detected CDXA-PS" );
        /* FIXME: have a proper way to decap CD sectors or make an access stream filter */
    }
    else if( b_force )
    {
        FUNC6( p_demux, "this does not look like an MPEG PS stream, "
                  "continuing anyway" );
        i_max_packets = 0;
    }

    for( unsigned i=0; i<i_max_packets; i++ )
    {
        if( i_peek < i_offset + 16 )
        {
            i_peek = FUNC11( p_demux->s, &p_peek, i_offset + 16 );
            if( i_peek < i_offset + 16 )
                return VLC_EGENERIC;
        }

        const uint8_t startcode[3] = { 0x00, 0x00, 0x01 };
        const uint8_t *p_header = &p_peek[i_offset];
        if( FUNC3( p_header, startcode, 3 ) ||
           ( (p_header[3] & 0xB0) != 0xB0 &&
            !(p_header[3] >= 0xC0 && p_header[3] <= 0xEF) &&
              p_header[3] != PS_STREAM_ID_EXTENDED &&
              p_header[3] != PS_STREAM_ID_DIRECTORY ) )
            return VLC_EGENERIC;

        ssize_t i_pessize = FUNC7( p_header, 16 );
        if( i_pessize < 5 )
            return VLC_EGENERIC;
        i_offset += i_pessize;
    }

    if( i_skip > 0 && !p_demux->b_preparsing &&
        FUNC12( p_demux->s, NULL, i_skip ) != i_skip )
        return VLC_EGENERIC;

    /* Fill p_demux field */
    p_demux->p_sys = p_sys = FUNC2( sizeof( demux_sys_t ) );
    if( !p_sys ) return VLC_ENOMEM;

    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    /* Init p_sys */
    p_sys->i_mux_rate = i_mux_rate;
    p_sys->i_pack_scr  = VLC_TICK_INVALID;
    p_sys->i_first_scr = VLC_TICK_INVALID;
    p_sys->i_scr = VLC_TICK_INVALID;
    p_sys->i_scr_track_id = 0;
    p_sys->i_length   = i_length;
    p_sys->i_current_pts = VLC_TICK_INVALID;
    p_sys->i_time_track_index = -1;
    p_sys->i_aob_mlp_count = 0;
    p_sys->i_start_byte = i_skip;
    p_sys->i_lastpack_byte = i_skip;

    p_sys->b_lost_sync = false;
    p_sys->b_have_pack = false;
    p_sys->b_bad_scr   = false;
    p_sys->b_seekable  = false;
    p_sys->format      = format;
    p_sys->current_title = 0;
    p_sys->current_seekpoint = 0;
    p_sys->updates = 0;

    FUNC10( p_demux->s, STREAM_CAN_SEEK, &p_sys->b_seekable );

    FUNC8( &p_sys->psm );
    FUNC9( p_sys->tk );

    /* TODO prescanning of ES */

    return VLC_SUCCESS;
}