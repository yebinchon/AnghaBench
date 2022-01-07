
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
struct TYPE_10__ {int i_rate; void* i_channels; } ;
struct TYPE_7__ {TYPE_4__ audio; scalar_t__ i_bitrate; } ;
struct TYPE_9__ {int b_force_backup; void* i_pre_skip; TYPE_1__ fmt; int dts; } ;
typedef TYPE_3__ logical_stream_t ;


 void* __MAX (int,void*) ;
 int date_Init (int *,int,int) ;
 int fill_channels_info (TYPE_4__*) ;
 int oggpack_adv (int *,int) ;
 void* oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ,int ) ;

__attribute__((used)) static void Ogg_ReadOpusHeader( logical_stream_t *p_stream,
                                ogg_packet *p_oggpacket )
{
    oggpack_buffer opb;




    p_stream->b_force_backup = 1;



    p_stream->fmt.audio.i_rate = 48000;
    date_Init( &p_stream->dts, p_stream->fmt.audio.i_rate, 1 );
    p_stream->fmt.i_bitrate = 0;


    oggpack_readinit( &opb, p_oggpacket->packet, p_oggpacket->bytes);
    oggpack_adv( &opb, 64 );
    oggpack_adv( &opb, 8 );
    p_stream->fmt.audio.i_channels = oggpack_read( &opb, 8 );
    fill_channels_info(&p_stream->fmt.audio);
    p_stream->i_pre_skip = oggpack_read( &opb, 16 );





    p_stream->i_pre_skip = __MAX( 80*48, p_stream->i_pre_skip );
}
