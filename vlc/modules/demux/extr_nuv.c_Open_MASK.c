#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_20__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  char uint8_t ;
struct TYPE_25__ {char i_type; int i_length; float i_compression; } ;
typedef  TYPE_3__ frame_header_t ;
struct TYPE_24__ {int /*<<< orphan*/  i_bitspersample; int /*<<< orphan*/  i_rate; } ;
struct TYPE_22__ {int i_height; int i_visible_height; int i_sar_num; int /*<<< orphan*/  i_width; int /*<<< orphan*/  i_sar_den; int /*<<< orphan*/  i_visible_width; } ;
struct TYPE_26__ {int i_extra; TYPE_2__ audio; TYPE_1__ video; int /*<<< orphan*/ * p_extra; } ;
typedef  TYPE_4__ es_format_t ;
struct TYPE_27__ {TYPE_6__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; int /*<<< orphan*/  s; int /*<<< orphan*/  out; } ;
typedef  TYPE_5__ demux_t ;
struct TYPE_21__ {scalar_t__ i_video_blocks; int i_height; int d_aspect; scalar_t__ i_audio_blocks; scalar_t__ i_text_blocks; int /*<<< orphan*/  i_width; } ;
struct TYPE_23__ {int /*<<< orphan*/  i_audio_bits_per_sample; int /*<<< orphan*/  i_audio_sample_rate; int /*<<< orphan*/  i_video_fcc; } ;
struct TYPE_28__ {int i_pcr; int b_index; int i_total_frames; int i_total_length; int i_extra_f; int /*<<< orphan*/  i_first_frame_offset; TYPE_16__ hdr; int /*<<< orphan*/ * p_es_audio; TYPE_20__ exh; int /*<<< orphan*/ * p_es_video; int /*<<< orphan*/ * p_extra_f; scalar_t__ b_seekable; int /*<<< orphan*/  idx; } ;
typedef  TYPE_6__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 scalar_t__ FUNC1 (TYPE_5__*,TYPE_20__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*,TYPE_16__*) ; 
 int /*<<< orphan*/  STREAM_CAN_SEEK ; 
 scalar_t__ FUNC4 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_MPGA ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,char*,...) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC15 (int /*<<< orphan*/ ,char const**,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18( vlc_object_t * p_this )
{
    demux_t     *p_demux = (demux_t*)p_this;
    demux_sys_t *p_sys;
    const uint8_t *p_peek;
    frame_header_t fh;

    /* Check id */
    if( FUNC15( p_demux->s, &p_peek, 12 ) != 12 ||
        ( FUNC13( (char *)p_peek, "MythTVVideo", 11 ) &&
          FUNC13( (char *)p_peek, "NuppelVideo", 11 ) ) )
        return VLC_EGENERIC;

    p_sys = FUNC8( sizeof( demux_sys_t ) );
    if( p_sys == NULL )
        return VLC_ENOMEM;
    FUNC9( p_sys, 0, sizeof( demux_sys_t ) );
    p_sys->p_es_video = NULL;
    p_sys->p_es_audio = NULL;
    p_sys->p_extra_f = NULL;
    p_sys->i_pcr = -1;
    p_sys->b_index = false;
    p_sys->i_total_frames = -1;
    p_sys->i_total_length = -1;
    FUNC5( &p_sys->idx );

    p_demux->p_sys = p_sys;

    /* Info about the stream */
    FUNC14( p_demux->s, STREAM_CAN_SEEK, &p_sys->b_seekable );
#if 0
    if( p_sys->b_seekable )
        msg_Dbg( p_demux, "stream is seekable" );
    else
        msg_Dbg( p_demux, "stream is NOT seekable" );
#endif

    if( FUNC3( p_demux, &p_sys->hdr ) )
        goto error;

    /* Load 'D' */
    if( FUNC2( p_demux, &fh ) || fh.i_type != 'D' )
        goto error;
    if( fh.i_length > 0 )
    {
        if( fh.i_compression == 'F' || fh.i_compression == 'R' )
        {
            /* libavcodec extra data */
            p_sys->i_extra_f = fh.i_length;
            p_sys->p_extra_f = FUNC8( fh.i_length );
            if( p_sys->p_extra_f == NULL || FUNC16( p_demux->s,
                             p_sys->p_extra_f, fh.i_length ) != fh.i_length )
                goto error;
        }
        else
        {
            FUNC12( p_demux, "unsupported 'D' frame (c=%c)", fh.i_compression );
            if( FUNC16( p_demux->s, NULL,
                                 fh.i_length ) != fh.i_length )
                goto error;
        }
    }

    /* Check and load extented */
    if( FUNC15( p_demux->s, &p_peek, 1 ) != 1 )
        goto error;
    if( p_peek[0] == 'X' )
    {
        if( FUNC2( p_demux, &fh ) )
            goto error;
        if( fh.i_length != 512 )
            goto error;

        if( FUNC1( p_demux, &p_sys->exh ) )
            goto error;

        if( !p_sys->b_seekable )
            FUNC12( p_demux, "stream is not seekable, skipping seektable" );
        else if( FUNC4( p_demux, p_sys ) )
        {
            p_sys->b_index = false;
            FUNC12( p_demux, "Seektable is broken, seek won't be accurate" );
        }
    }
    else
    {
        /* XXX: for now only file with extended chunk are supported
         * why: because else we need to have support for rtjpeg+stupid nuv shit */
        FUNC11( p_demux, "VLC doesn't support NUV without extended chunks (please upload samples)" );
        goto error;
    }

    /* Create audio/video (will work only with extended header and audio=mp3 */
    if( p_sys->hdr.i_video_blocks != 0 )
    {
        es_format_t fmt;

        FUNC6( &fmt, VIDEO_ES, p_sys->exh.i_video_fcc );
        fmt.video.i_width = p_sys->hdr.i_width;
        fmt.video.i_height = p_sys->hdr.i_height;
        fmt.video.i_visible_width = fmt.video.i_width;
        fmt.video.i_visible_height = fmt.video.i_height;
        fmt.i_extra = p_sys->i_extra_f;
        fmt.p_extra = p_sys->p_extra_f;
        fmt.video.i_sar_num = p_sys->hdr.d_aspect * fmt.video.i_height;
        fmt.video.i_sar_den = fmt.video.i_width;

        p_sys->p_es_video = FUNC7( p_demux->out, &fmt );
    }
    if( p_sys->hdr.i_audio_blocks != 0 )
    {
        es_format_t fmt;

        FUNC6( &fmt, AUDIO_ES, VLC_CODEC_MPGA );
        fmt.audio.i_rate = p_sys->exh.i_audio_sample_rate;
        fmt.audio.i_bitspersample = p_sys->exh.i_audio_bits_per_sample;

        p_sys->p_es_audio = FUNC7( p_demux->out, &fmt );
    }
    if( p_sys->hdr.i_text_blocks != 0 )
    {
        FUNC12( p_demux, "text not yet supported (upload samples)" );
    }

    p_sys->i_first_frame_offset = FUNC17( p_demux->s );

    /* Fill p_demux fields */
    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    return VLC_SUCCESS;

error:
    FUNC12( p_demux, "cannot load Nuv file" );
    FUNC0( p_this );
    p_demux->p_sys = NULL;
    return VLC_EGENERIC;
}