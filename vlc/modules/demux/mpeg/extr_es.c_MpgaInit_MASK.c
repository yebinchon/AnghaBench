#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_9__ {char* psz_version; int i_lowpass; } ;
typedef  TYPE_2__ lame_extra_t ;
struct TYPE_10__ {int /*<<< orphan*/  s; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ demux_t ;
struct TYPE_8__ {scalar_t__ i_frames; scalar_t__ i_bytes; int b_lame; TYPE_2__ lame; int /*<<< orphan*/  i_frame_samples; void* i_bitrate_avg; } ;
struct TYPE_11__ {int i_packet_size; float* rgf_replay_peak; float* rgf_replay_gain; TYPE_1__ xing; } ;
typedef  TYPE_4__ demux_sys_t ;

/* Variables and functions */
 size_t AUDIO_REPLAY_GAIN_ALBUM ; 
 size_t AUDIO_REPLAY_GAIN_TRACK ; 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ID3TAG_Parse_Handler ; 
 int FUNC2 (int const) ; 
 scalar_t__ FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int const*) ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 
 void* FUNC6 (int const**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int const**,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int const**,int*,int) ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC11 (int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*,scalar_t__,...) ; 
 int FUNC14 (int /*<<< orphan*/ ,int const**,int) ; 

__attribute__((used)) static int FUNC15( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    const uint8_t *p_peek;
    int i_peek;

    /* */
    p_sys->i_packet_size = 1024;

    FUNC1( p_demux, ID3TAG_Parse_Handler );

    /* Load a potential xing header */
    i_peek = FUNC14( p_demux->s, &p_peek, 4 + 1024 );
    if( i_peek < 4 + 21 )
        return VLC_SUCCESS;

    const uint32_t header = FUNC0( p_peek );
    if( !FUNC4( p_peek ) )
        return VLC_SUCCESS;

    /* Xing header */
    const uint8_t *p_xing = p_peek;
    int i_xing = i_peek;
    int i_skip;

    if( FUNC3( header ) == 0 )
        i_skip = FUNC2( header ) != 3 ? 36 : 21;
    else
        i_skip = FUNC2( header ) != 3 ? 21 : 13;

    if( i_skip + 8 >= i_xing || FUNC11( &p_xing[i_skip], "Xing", 4 ) )
        return VLC_SUCCESS;

    const uint32_t i_flags = FUNC0( &p_xing[i_skip+4] );

    FUNC10( &p_xing, &i_xing, i_skip + 8 );

    if( i_flags&0x01 )
        p_sys->xing.i_frames = FUNC6( &p_xing, &i_xing, 0 );
    if( i_flags&0x02 )
        p_sys->xing.i_bytes = FUNC6( &p_xing, &i_xing, 0 );
    if( i_flags&0x04 ) /* TODO Support XING TOC to improve seeking accuracy */
        FUNC10( &p_xing, &i_xing, 100 );
    if( i_flags&0x08 )
    {
        /* FIXME: doesn't return the right bitrage average, at least
           with some MP3's */
        p_sys->xing.i_bitrate_avg = FUNC6( &p_xing, &i_xing, 0 );
        FUNC13( p_demux, "xing vbr value present (%d)",
                 p_sys->xing.i_bitrate_avg );
    }

    if( p_sys->xing.i_frames > 0 && p_sys->xing.i_bytes > 0 )
    {
        p_sys->xing.i_frame_samples = FUNC5( header );
        FUNC13( p_demux, "xing frames&bytes value present "
                 "(%d bytes, %d frames, %d samples/frame)",
                 p_sys->xing.i_bytes, p_sys->xing.i_frames,
                 p_sys->xing.i_frame_samples );
    }

    if( i_xing >= 20 && FUNC11( p_xing, "LAME", 4 ) == 0)
    {
        p_sys->xing.b_lame = true;
        lame_extra_t *p_lame = &p_sys->xing.lame;

        FUNC12( p_lame->psz_version, p_xing, 9 );
        p_lame->psz_version[9] = '\0';

        FUNC10( &p_xing, &i_xing, 9 );
        FUNC10( &p_xing, &i_xing, 1 ); /* rev_method */

        p_lame->i_lowpass = (*p_xing) * 100;
        FUNC10( &p_xing, &i_xing, 1 );

        uint32_t peak  = FUNC6( &p_xing, &i_xing, 0 );
        uint16_t track = FUNC7( &p_xing, &i_xing, 0 );
        uint16_t album = FUNC7( &p_xing, &i_xing, 0 );

        p_sys->rgf_replay_peak[AUDIO_REPLAY_GAIN_TRACK] = (float) FUNC9( peak );
        p_sys->rgf_replay_gain[AUDIO_REPLAY_GAIN_TRACK] = (float) FUNC8( track );
        p_sys->rgf_replay_gain[AUDIO_REPLAY_GAIN_ALBUM] = (float) FUNC8( album );

        FUNC10( &p_xing, &i_xing, 1 ); /* flags */
    }

    return VLC_SUCCESS;
}