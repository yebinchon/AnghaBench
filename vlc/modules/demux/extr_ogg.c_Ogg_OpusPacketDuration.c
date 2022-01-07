
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes; int packet; } ;
typedef TYPE_1__ ogg_packet ;


 int opus_frame_duration (int ,int ) ;

__attribute__((used)) static unsigned Ogg_OpusPacketDuration( ogg_packet *p_oggpacket )
{
    return opus_frame_duration(p_oggpacket->packet, p_oggpacket->bytes);
}
