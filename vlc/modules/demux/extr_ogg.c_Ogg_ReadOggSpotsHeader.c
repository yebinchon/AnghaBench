
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int bytes; int * packet; } ;
typedef TYPE_2__ ogg_packet ;
struct TYPE_7__ {int i_frame_rate_base; int i_frame_rate; } ;
struct TYPE_10__ {TYPE_1__ video; } ;
struct TYPE_9__ {int b_force_backup; int i_granule_shift; TYPE_4__ fmt; int dts; } ;
typedef TYPE_3__ logical_stream_t ;


 int GetQWLE (int *) ;
 int GetWLE (int *) ;
 int VIDEO_ES ;
 int VLC_CODEC_OGGSPOTS ;
 int date_Init (int *,int ,int ) ;
 int es_format_Change (TYPE_4__*,int ,int ) ;
 int vlc_ureduce (int *,int *,int,int,int ) ;

__attribute__((used)) static bool Ogg_ReadOggSpotsHeader( logical_stream_t *p_stream,
                                    ogg_packet *p_oggpacket )
{
    uint64_t i_granulerate_numerator;
    uint64_t i_granulerate_denominator;
    int i_major;
    int i_minor;

    es_format_Change( &p_stream->fmt, VIDEO_ES, VLC_CODEC_OGGSPOTS );




    p_stream->b_force_backup = 1;


    if ( p_oggpacket->bytes != 52 )
    {

        return 0;
    }

    i_major = GetWLE( &p_oggpacket->packet[ 8] );
    i_minor = GetWLE( &p_oggpacket->packet[10] );
    if ( i_major != 0 || i_minor != 1 )
    {
        return 0;
    }


    i_granulerate_numerator = GetQWLE( &p_oggpacket->packet[12] );
    i_granulerate_denominator = GetQWLE( &p_oggpacket->packet[20] );
    if ( i_granulerate_numerator == 0 || i_granulerate_denominator == 0 )
    {
        return 0;
    }




    if ( i_granulerate_numerator == 1 && i_granulerate_denominator == 30 )
    {
        i_granulerate_numerator = 30;
        i_granulerate_denominator = 1;
    }

    if ( !i_granulerate_numerator || !i_granulerate_denominator )
        return 0;


    vlc_ureduce(&p_stream->fmt.video.i_frame_rate,
                &p_stream->fmt.video.i_frame_rate_base,
                i_granulerate_numerator, i_granulerate_denominator, 0);

    date_Init( &p_stream->dts, p_stream->fmt.video.i_frame_rate,
                               p_stream->fmt.video.i_frame_rate_base );

    p_stream->i_granule_shift = p_oggpacket->packet[28];

    return 1;
}
