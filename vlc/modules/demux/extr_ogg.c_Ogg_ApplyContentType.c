
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_cat; void* psz_description; } ;
struct TYPE_4__ {TYPE_2__ fmt; } ;
typedef TYPE_1__ logical_stream_t ;


 scalar_t__ AUDIO_ES ;
 scalar_t__ UNKNOWN_ES ;
 scalar_t__ VIDEO_ES ;
 int VLC_CODEC_DAALA ;
 int VLC_CODEC_FLAC ;
 int VLC_CODEC_MPGV ;
 int VLC_CODEC_SPEEX ;
 int VLC_CODEC_THEORA ;
 int VLC_CODEC_VORBIS ;
 int VLC_CODEC_VP8 ;
 int VLC_FOURCC (char,char,char,char) ;
 int es_format_Change (TYPE_2__*,scalar_t__,int ) ;
 int free (void*) ;
 void* strdup (char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void Ogg_ApplyContentType( logical_stream_t *p_stream, const char* psz_value,
                                  bool *b_force_backup )
{
    if( p_stream->fmt.i_cat != UNKNOWN_ES )
        return;

    if( !strncmp(psz_value, "audio/x-wav", 11) )
    {

        es_format_Change( &p_stream->fmt, UNKNOWN_ES, 0 );
        free( p_stream->fmt.psz_description );
        p_stream->fmt.psz_description = strdup("WAV Audio (Unsupported)");
    }
    else if( !strncmp(psz_value, "audio/x-vorbis", 14) ||
             !strncmp(psz_value, "audio/vorbis", 12) )
    {
        es_format_Change( &p_stream->fmt, AUDIO_ES, VLC_CODEC_VORBIS );

        *b_force_backup = 1;
    }
    else if( !strncmp(psz_value, "audio/x-speex", 13) ||
             !strncmp(psz_value, "audio/speex", 11) )
    {
        es_format_Change( &p_stream->fmt, AUDIO_ES, VLC_CODEC_SPEEX );

        *b_force_backup = 1;
    }
    else if( !strncmp(psz_value, "audio/flac", 10) )
    {
        es_format_Change( &p_stream->fmt, AUDIO_ES, VLC_CODEC_FLAC );

        *b_force_backup = 1;
    }
    else if( !strncmp(psz_value, "video/x-theora", 14) ||
             !strncmp(psz_value, "video/theora", 12) )
    {
        es_format_Change( &p_stream->fmt, VIDEO_ES, VLC_CODEC_THEORA );

        *b_force_backup = 1;
    }
    else if( !strncmp(psz_value, "video/x-daala", 13) ||
             !strncmp(psz_value, "video/daala", 11) )
    {
        es_format_Change( &p_stream->fmt, VIDEO_ES, VLC_CODEC_DAALA );

        *b_force_backup = 1;
    }
    else if( !strncmp(psz_value, "video/x-xvid", 12) )
    {
        es_format_Change( &p_stream->fmt, VIDEO_ES, VLC_FOURCC( 'x','v','i','d' ) );

        *b_force_backup = 1;
    }
    else if( !strncmp(psz_value, "video/mpeg", 10) )
    {

        es_format_Change( &p_stream->fmt, VIDEO_ES, VLC_CODEC_MPGV );
    }
    else if( !strncmp(psz_value, "application/kate", 16) )
    {

        es_format_Change( &p_stream->fmt, UNKNOWN_ES, 0 );
        p_stream->fmt.psz_description = strdup("OGG Kate Overlay (Unsupported)");
    }
    else if( !strncmp(psz_value, "video/x-vp8", 11) )
    {
        es_format_Change( &p_stream->fmt, VIDEO_ES, VLC_CODEC_VP8 );
    }
}
