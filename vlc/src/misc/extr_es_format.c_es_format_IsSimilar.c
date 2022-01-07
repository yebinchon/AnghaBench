
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i_chroma; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_10__ {int i_chan_mode; int i_physical_channels; int i_channels; int i_rate; int channel_type; int i_format; } ;
struct TYPE_9__ {int i_cat; int i_codec; TYPE_1__ video; int i_profile; TYPE_3__ audio; } ;
typedef TYPE_2__ es_format_t ;
typedef TYPE_3__ audio_format_t ;





 int video_format_IsSimilar (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ vlc_fourcc_GetCodec (int,int ) ;

bool es_format_IsSimilar( const es_format_t *p_fmt1, const es_format_t *p_fmt2 )
{
    if( p_fmt1->i_cat != p_fmt2->i_cat ||
        vlc_fourcc_GetCodec( p_fmt1->i_cat, p_fmt1->i_codec ) !=
        vlc_fourcc_GetCodec( p_fmt2->i_cat, p_fmt2->i_codec ) )
        return 0;

    switch( p_fmt1->i_cat )
    {
    case 130:
    {
        audio_format_t a1 = p_fmt1->audio;
        audio_format_t a2 = p_fmt2->audio;

        if( a1.i_format && a2.i_format && a1.i_format != a2.i_format )
            return 0;
        if( a1.channel_type != a2.channel_type ||
            a1.i_rate != a2.i_rate ||
            a1.i_channels != a2.i_channels ||
            a1.i_physical_channels != a2.i_physical_channels ||
            a1.i_chan_mode != a2.i_chan_mode )
            return 0;
        if( p_fmt1->i_profile != p_fmt2->i_profile )
            return 0;
        return 1;
    }

    case 128:
    {
        video_format_t v1 = p_fmt1->video;
        video_format_t v2 = p_fmt2->video;
        if( !v1.i_chroma )
            v1.i_chroma = vlc_fourcc_GetCodec( p_fmt1->i_cat, p_fmt1->i_codec );
        if( !v2.i_chroma )
            v2.i_chroma = vlc_fourcc_GetCodec( p_fmt2->i_cat, p_fmt2->i_codec );
        return video_format_IsSimilar( &v1, &v2 );
    }

    case 129:
    default:
        return 1;
    }
}
