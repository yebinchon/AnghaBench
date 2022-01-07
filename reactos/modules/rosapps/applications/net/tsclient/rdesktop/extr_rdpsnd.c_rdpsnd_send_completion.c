
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ uint16 ;
typedef int STREAM ;
typedef int RDPCLIENT ;


 int RDPSND_COMPLETION ;
 int out_uint16_le (int ,scalar_t__) ;
 int out_uint8 (int ,int ) ;
 int rdpsnd_init_packet (int *,int ,int) ;
 int rdpsnd_send (int *,int ) ;
 int s_mark_end (int ) ;

void
rdpsnd_send_completion(RDPCLIENT * This, uint16 tick, uint8 packet_index)
{
 STREAM s;

 s = rdpsnd_init_packet(This, RDPSND_COMPLETION, 4);
 out_uint16_le(s, tick + 50);
 out_uint8(s, packet_index);
 out_uint8(s, 0);
 s_mark_end(s);
 rdpsnd_send(This, s);
}
