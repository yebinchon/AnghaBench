
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* stream; } ;
typedef TYPE_2__ asf_header_t ;
struct TYPE_4__ {scalar_t__ i_cat; int i_selected; scalar_t__ i_bitrate; } ;


 scalar_t__ ASF_CODEC_TYPE_AUDIO ;
 scalar_t__ ASF_CODEC_TYPE_UNKNOWN ;
 scalar_t__ ASF_CODEC_TYPE_VIDEO ;

void asf_StreamSelect ( asf_header_t *hdr,
                              int i_bitrate_max,
                              bool b_all, bool b_audio, bool b_video )
{

    unsigned i;
    int i_audio, i_video;
    int i_bitrate_total;




    i_audio = 0;
    i_video = 0;
    i_bitrate_total = 0;
    if( b_all )
    {

        for( i = 1; i < 128; i++ )
        {
            if( hdr->stream[i].i_cat != ASF_CODEC_TYPE_UNKNOWN )
            {
                hdr->stream[i].i_selected = 1;
            }
        }
        return;
    }
    else
    {
        for( i = 0; i < 128; i++ )
        {

            hdr->stream[i].i_selected = 0;
        }
    }
    for( i = 1; i < 128; i++ )
    {
        if( hdr->stream[i].i_cat == ASF_CODEC_TYPE_UNKNOWN )
        {
            continue;
        }
        else if( hdr->stream[i].i_cat == ASF_CODEC_TYPE_AUDIO && b_audio &&
                 ( i_audio <= 0 ||
                    ( ( ( hdr->stream[i].i_bitrate > hdr->stream[i_audio].i_bitrate &&
                          ( i_bitrate_total + hdr->stream[i].i_bitrate - hdr->stream[i_audio].i_bitrate
                                            < i_bitrate_max || !i_bitrate_max) ) ||
                        ( hdr->stream[i].i_bitrate < hdr->stream[i_audio].i_bitrate &&
                              i_bitrate_max != 0 && i_bitrate_total > i_bitrate_max )
                      ) ) ) )
        {

            if( i_audio > 0 )
            {
                hdr->stream[i_audio].i_selected = 0;
                if( hdr->stream[i_audio].i_bitrate> 0 )
                {
                    i_bitrate_total -= hdr->stream[i_audio].i_bitrate;
                }
            }

            hdr->stream[i].i_selected = 1;
            if( hdr->stream[i].i_bitrate> 0 )
            {
                i_bitrate_total += hdr->stream[i].i_bitrate;
            }
            i_audio = i;
        }
        else if( hdr->stream[i].i_cat == ASF_CODEC_TYPE_VIDEO && b_video &&
                 ( i_video <= 0 ||
                    (
                        ( ( hdr->stream[i].i_bitrate > hdr->stream[i_video].i_bitrate &&
                            ( i_bitrate_total + hdr->stream[i].i_bitrate - hdr->stream[i_video].i_bitrate
                                            < i_bitrate_max || !i_bitrate_max) ) ||
                          ( hdr->stream[i].i_bitrate < hdr->stream[i_video].i_bitrate &&
                            i_bitrate_max != 0 && i_bitrate_total > i_bitrate_max )
                        ) ) ) )
        {

            if( i_video > 0 )
            {
                hdr->stream[i_video].i_selected = 0;
                if( hdr->stream[i_video].i_bitrate> 0 )
                {
                    i_bitrate_total -= hdr->stream[i_video].i_bitrate;
                }
            }

            hdr->stream[i].i_selected = 1;
            if( hdr->stream[i].i_bitrate> 0 )
            {
                i_bitrate_total += hdr->stream[i].i_bitrate;
            }
            i_video = i;
        }

    }
}
