#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ i_cat; void* psz_description; } ;
struct TYPE_4__ {TYPE_2__ fmt; } ;
typedef  TYPE_1__ logical_stream_t ;

/* Variables and functions */
 scalar_t__ AUDIO_ES ; 
 scalar_t__ UNKNOWN_ES ; 
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_DAALA ; 
 int /*<<< orphan*/  VLC_CODEC_FLAC ; 
 int /*<<< orphan*/  VLC_CODEC_MPGV ; 
 int /*<<< orphan*/  VLC_CODEC_SPEEX ; 
 int /*<<< orphan*/  VLC_CODEC_THEORA ; 
 int /*<<< orphan*/  VLC_CODEC_VORBIS ; 
 int /*<<< orphan*/  VLC_CODEC_VP8 ; 
 int /*<<< orphan*/  FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC5( logical_stream_t *p_stream, const char* psz_value,
                                  bool *b_force_backup )
{
    if( p_stream->fmt.i_cat != UNKNOWN_ES )
        return;

    if( !FUNC4(psz_value, "audio/x-wav", 11) )
    {
        /* n.b. WAVs are unsupported right now */
        FUNC1( &p_stream->fmt, UNKNOWN_ES, 0 );
        FUNC2( p_stream->fmt.psz_description );
        p_stream->fmt.psz_description = FUNC3("WAV Audio (Unsupported)");
    }
    else if( !FUNC4(psz_value, "audio/x-vorbis", 14) ||
             !FUNC4(psz_value, "audio/vorbis", 12) )
    {
        FUNC1( &p_stream->fmt, AUDIO_ES, VLC_CODEC_VORBIS );

        *b_force_backup = true;
    }
    else if( !FUNC4(psz_value, "audio/x-speex", 13) ||
             !FUNC4(psz_value, "audio/speex", 11) )
    {
        FUNC1( &p_stream->fmt, AUDIO_ES, VLC_CODEC_SPEEX );

        *b_force_backup = true;
    }
    else if( !FUNC4(psz_value, "audio/flac", 10) )
    {
        FUNC1( &p_stream->fmt, AUDIO_ES, VLC_CODEC_FLAC );

        *b_force_backup = true;
    }
    else if( !FUNC4(psz_value, "video/x-theora", 14) ||
             !FUNC4(psz_value, "video/theora", 12) )
    {
        FUNC1( &p_stream->fmt, VIDEO_ES, VLC_CODEC_THEORA );

        *b_force_backup = true;
    }
    else if( !FUNC4(psz_value, "video/x-daala", 13) ||
             !FUNC4(psz_value, "video/daala", 11) )
    {
        FUNC1( &p_stream->fmt, VIDEO_ES, VLC_CODEC_DAALA );

        *b_force_backup = true;
    }
    else if( !FUNC4(psz_value, "video/x-xvid", 12) )
    {
        FUNC1( &p_stream->fmt, VIDEO_ES, FUNC0( 'x','v','i','d' ) );

        *b_force_backup = true;
    }
    else if( !FUNC4(psz_value, "video/mpeg", 10) )
    {
        /* n.b. MPEG streams are unsupported right now */
        FUNC1( &p_stream->fmt, VIDEO_ES, VLC_CODEC_MPGV );
    }
    else if( !FUNC4(psz_value, "application/kate", 16) )
    {
        /* ??? */
        FUNC1( &p_stream->fmt, UNKNOWN_ES, 0 );
        p_stream->fmt.psz_description = FUNC3("OGG Kate Overlay (Unsupported)");
    }
    else if( !FUNC4(psz_value, "video/x-vp8", 11) )
    {
        FUNC1( &p_stream->fmt, VIDEO_ES, VLC_CODEC_VP8 );
    }
}