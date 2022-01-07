
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int oggpack_buffer ;
struct TYPE_12__ {int bytes; int packet; } ;
typedef TYPE_4__ ogg_packet ;
struct TYPE_10__ {void* i_framesperpacket; void* i_framesize; } ;
struct TYPE_11__ {TYPE_2__ speex; } ;
struct TYPE_14__ {void* i_channels; void* i_rate; } ;
struct TYPE_9__ {void* i_bitrate; TYPE_6__ audio; } ;
struct TYPE_13__ {int b_force_backup; void* i_extra_headers_packets; TYPE_3__ special; TYPE_1__ fmt; int dts; } ;
typedef TYPE_5__ logical_stream_t ;


 int date_Init (int *,void*,int) ;
 int fill_channels_info (TYPE_6__*) ;
 int oggpack_adv (int *,int) ;
 void* oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ,int ) ;

__attribute__((used)) static bool Ogg_ReadSpeexHeader( logical_stream_t *p_stream,
                                 ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;




    p_stream->b_force_backup = 1;


    oggpack_readinit( &opb, p_oggpacket->packet, p_oggpacket->bytes);
    oggpack_adv( &opb, 224 );
    oggpack_adv( &opb, 32 );
    oggpack_adv( &opb, 32 );
    p_stream->fmt.audio.i_rate = oggpack_read( &opb, 32 );
    if ( !p_stream->fmt.audio.i_rate )
        return 0;
    date_Init( &p_stream->dts, p_stream->fmt.audio.i_rate, 1 );
    oggpack_adv( &opb, 32 );
    oggpack_adv( &opb, 32 );
    p_stream->fmt.audio.i_channels = oggpack_read( &opb, 32 );
    fill_channels_info(&p_stream->fmt.audio);
    p_stream->fmt.i_bitrate = oggpack_read( &opb, 32 );
    p_stream->special.speex.i_framesize =
            oggpack_read( &opb, 32 );
    oggpack_adv( &opb, 32 );
    p_stream->special.speex.i_framesperpacket =
            oggpack_read( &opb, 32 );
    p_stream->i_extra_headers_packets = oggpack_read( &opb, 32 );
    return 1;
}
