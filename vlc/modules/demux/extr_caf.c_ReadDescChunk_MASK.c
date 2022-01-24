#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_fourcc_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/  s; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_8__ {unsigned int i_rate; int i_channels; int i_bytes_per_frame; int i_frame_length; int i_bitspersample; int i_blockalign; } ;
struct TYPE_11__ {scalar_t__ i_codec; int i_bitrate; TYPE_1__ audio; } ;
struct TYPE_10__ {int i_max_frames; TYPE_6__ fmt; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 double UINT_MAX ; 
 scalar_t__ VLC_CODEC_DVD_LPCM ; 
 scalar_t__ VLC_CODEC_F32B ; 
 scalar_t__ VLC_CODEC_F32L ; 
 scalar_t__ VLC_CODEC_F64B ; 
 scalar_t__ VLC_CODEC_F64L ; 
 scalar_t__ VLC_CODEC_MP4A ; 
 scalar_t__ VLC_CODEC_OPUS ; 
 int VLC_EGENERIC ; 
 scalar_t__ FUNC3 (char,char,char,char) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 double FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static int FUNC11( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    const uint8_t *p_peek;

    if ( FUNC10( p_demux->s, &p_peek, 8 + 6 * 4 ) < ( 8 + 6 * 4 ))
    {
        return VLC_EGENERIC;
    }

    vlc_fourcc_t i_fmt = FUNC2( p_peek + 8 );
    uint32_t i_fmt_flags = FUNC1( p_peek + 12 );

    uint32_t i_bits_per_channel = FUNC1( p_peek + 28 );
    uint32_t i_bytes_per_packet = FUNC1( p_peek + 16 );
    uint32_t i_frames_per_packet = FUNC1( p_peek + 20 );
    uint32_t i_channels_per_frame = FUNC1( p_peek + 24 );

    if( i_fmt == VLC_CODEC_DVD_LPCM )
    {
        if( !i_frames_per_packet || !i_channels_per_frame )
        {
            FUNC6( p_demux, "Absurd LPCM parameters (frames_per_packet: %u, channels_per_frame: %u).", i_frames_per_packet, i_channels_per_frame );
            return VLC_EGENERIC;
        }

        uint32_t i_unpacked_bits_per_sample = ( i_bytes_per_packet / i_frames_per_packet / i_channels_per_frame ) * 8;

        bool b_is_float = !!( i_fmt_flags & ( 1 << 0 ) );
        bool b_is_be = !( i_fmt_flags & ( 1 << 1 ) );

        vlc_fourcc_t i_basic_codec = 0;

        if( !b_is_float )
        {
            i_basic_codec = b_is_be ? FUNC3( 't', 'w', 'o', 's' ) : FUNC3( 's', 'o', 'w', 't' );
            FUNC4( &p_sys->fmt, AUDIO_ES, FUNC9( i_basic_codec, i_unpacked_bits_per_sample ));
        }
        else
        {
            if( i_bits_per_channel == 32 )
                i_basic_codec = b_is_be ? VLC_CODEC_F32B : VLC_CODEC_F32L;
            else if( i_bits_per_channel == 64 )
                i_basic_codec = b_is_be ? VLC_CODEC_F64B : VLC_CODEC_F64L;

            if( i_basic_codec )
                FUNC4( &p_sys->fmt, AUDIO_ES, FUNC9( i_basic_codec, i_bits_per_channel ));
        }
    }
    else if( i_fmt == FUNC3( 'a', 'a', 'c', ' ' ))
    {
        const uint32_t kMP4Audio_AAC_LC_ObjectType = 2;

        if( i_fmt_flags != kMP4Audio_AAC_LC_ObjectType )
        {
            FUNC7( p_demux, "The only documented format flag for aac is 2 (kMP4Audio_AAC_LC_ObjectType), but is %i. Continuing anyways.", i_fmt_flags );
        }

        FUNC4( &p_sys->fmt, AUDIO_ES, FUNC9( VLC_CODEC_MP4A, 0 ));

    }
    else
    {
        FUNC4( &p_sys->fmt, AUDIO_ES, FUNC9( i_fmt, 0 ));
    }

    if( !p_sys->fmt.i_codec )
    {
        FUNC6( p_demux, "could not determine codec" );
        return VLC_EGENERIC;
    }

    double d_rate = FUNC8( FUNC0( p_peek ));

    if( d_rate <= 0 || d_rate > UINT_MAX )
        return VLC_EGENERIC;

    p_sys->fmt.audio.i_rate = (unsigned int)FUNC5( d_rate );
    if( !p_sys->fmt.audio.i_rate )
    {
        FUNC6( p_demux, "Sample rate must be non-zero" );
        return VLC_EGENERIC;
    }
    p_sys->fmt.audio.i_channels = i_channels_per_frame;
    p_sys->fmt.audio.i_bytes_per_frame = i_bytes_per_packet; /* "mBytesPerPacket" in Apple parlance */
    p_sys->fmt.audio.i_frame_length = i_frames_per_packet; /* "mFramesPerPacket" in Apple parlance */
    p_sys->fmt.audio.i_bitspersample = i_bits_per_channel; /* mBitsPerChannel */
    p_sys->fmt.audio.i_blockalign = i_bytes_per_packet;
    p_sys->fmt.i_bitrate = i_bits_per_channel * p_sys->fmt.audio.i_rate * i_channels_per_frame;

    if( p_sys->fmt.i_codec == VLC_CODEC_OPUS )
    {
        p_sys->i_max_frames = 1;
    }
    else p_sys->i_max_frames = UINT_MAX;

    return VLC_SUCCESS;
}