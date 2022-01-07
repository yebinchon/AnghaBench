
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int oggpack_buffer ;
struct TYPE_8__ {int bytes; int packet; } ;
typedef TYPE_2__ ogg_packet ;
struct TYPE_10__ {void* i_rate; void* i_channels; } ;
struct TYPE_7__ {void* i_bitrate; TYPE_4__ audio; } ;
struct TYPE_9__ {int b_force_backup; TYPE_1__ fmt; int dts; } ;
typedef TYPE_3__ logical_stream_t ;


 void* INT32_MAX ;
 int date_Init (int *,void*,int) ;
 int fill_channels_info (TYPE_4__*) ;
 int oggpack_adv (int *,int) ;
 void* oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ,int ) ;

__attribute__((used)) static bool Ogg_ReadVorbisHeader( logical_stream_t *p_stream,
                                  ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;




    p_stream->b_force_backup = 1;


    oggpack_readinit( &opb, p_oggpacket->packet, p_oggpacket->bytes);
    oggpack_adv( &opb, 88 );
    p_stream->fmt.audio.i_channels = oggpack_read( &opb, 8 );
    fill_channels_info(&p_stream->fmt.audio);
    p_stream->fmt.audio.i_rate = oggpack_read( &opb, 32 );
    if( p_stream->fmt.audio.i_rate == 0 )
        return 0;
    date_Init( &p_stream->dts, p_stream->fmt.audio.i_rate, 1 );

    oggpack_adv( &opb, 32 );
    p_stream->fmt.i_bitrate = oggpack_read( &opb, 32 );
    if( p_stream->fmt.i_bitrate > INT32_MAX ) p_stream->fmt.i_bitrate = 0;
    return 1;
}
