#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int iSize; int /*<<< orphan*/  const wBitsPerSample; int /*<<< orphan*/  const nChannels; int /*<<< orphan*/  nSamplesPerSec; } ;
typedef  TYPE_2__ xa_header_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int i_rate; int i_bytes_per_frame; int i_frame_length; int i_channels; int i_blockalign; int i_bitspersample; } ;
struct TYPE_13__ {int i_bitrate; TYPE_1__ audio; int /*<<< orphan*/  i_codec; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_14__ {TYPE_5__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; int /*<<< orphan*/  out; int /*<<< orphan*/  s; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_15__ {int i_data_size; int i_block_frames; int i_frame_size; int i_bitrate; int /*<<< orphan*/  pts; int /*<<< orphan*/ * p_es; } ;
typedef  TYPE_5__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int FRAME_LENGTH ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ HEADER_LENGTH ; 
 int /*<<< orphan*/  VLC_CODEC_ADPCM_XA_EA ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC12( vlc_object_t * p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    const uint8_t *peek;

    /* XA file heuristic */
    if( FUNC10( p_demux->s, &peek, 10 ) < 10 )
        return VLC_EGENERIC;
    if( FUNC6( peek, "XAI", 4 ) && FUNC6( peek, "XAJ", 4 ) &&
            FUNC6( peek, "XA\0", 4 ) )
        return VLC_EGENERIC;
    if( FUNC1( peek + 8 ) != 1 ) /* format tag */
        return VLC_EGENERIC;

    demux_sys_t *p_sys = FUNC9( p_this, sizeof (*p_sys) );
    if( FUNC8( p_sys == NULL ) )
        return VLC_ENOMEM;

    /* read XA header*/
    xa_header_t xa;

    if( FUNC11( p_demux->s, &xa, HEADER_LENGTH ) < HEADER_LENGTH )
        return VLC_EGENERIC;

    es_format_t fmt;
    FUNC4( &fmt, AUDIO_ES, VLC_CODEC_ADPCM_XA_EA );

    FUNC7( p_demux, "assuming EA ADPCM audio codec" );
    fmt.audio.i_rate = FUNC0( &xa.nSamplesPerSec );
    fmt.audio.i_bytes_per_frame = 15 * FUNC1( &xa.nChannels );
    fmt.audio.i_frame_length = FRAME_LENGTH;

    fmt.audio.i_channels = FUNC1 ( &xa.nChannels );
    fmt.audio.i_blockalign = fmt.audio.i_bytes_per_frame;
    fmt.audio.i_bitspersample = FUNC1( &xa.wBitsPerSample );
    fmt.i_bitrate = (fmt.audio.i_rate * fmt.audio.i_bytes_per_frame * 8)
                    / fmt.audio.i_frame_length;

    /* FIXME: better computation */
    p_sys->i_data_size = xa.iSize * 15 / 56;
    /* How many frames per block (1:1 is too CPU intensive) */
    p_sys->i_block_frames = fmt.audio.i_rate / (FRAME_LENGTH * 20) + 1;
    p_sys->i_frame_size = fmt.audio.i_bytes_per_frame;
    p_sys->i_bitrate = fmt.i_bitrate;

    FUNC7( p_demux, "fourcc: %4.4s, channels: %d, "
             "freq: %d Hz, bitrate: %dKo/s, blockalign: %d",
             (char *)&fmt.i_codec, fmt.audio.i_channels, fmt.audio.i_rate,
             fmt.i_bitrate / 8192, fmt.audio.i_blockalign );

    if( fmt.audio.i_rate == 0 || fmt.audio.i_channels == 0
     || fmt.audio.i_bitspersample != 16 )
        return VLC_EGENERIC;

    p_sys->p_es = FUNC5( p_demux->out, &fmt );
    if( FUNC8(p_sys->p_es == NULL) )
        return VLC_ENOMEM;

    FUNC2( &p_sys->pts, fmt.audio.i_rate, 1 );
    FUNC3( &p_sys->pts, VLC_TICK_0 );

    p_demux->pf_demux   = Demux;
    p_demux->pf_control = Control;
    p_demux->p_sys      = p_sys;
    return VLC_SUCCESS;
}