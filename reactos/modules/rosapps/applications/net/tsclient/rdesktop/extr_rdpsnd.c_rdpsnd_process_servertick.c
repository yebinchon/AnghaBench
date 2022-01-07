
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef int STREAM ;
typedef int RDPCLIENT ;


 int RDPSND_SERVERTICK ;
 int in_uint16_le (int ,int ) ;
 int out_uint16_le (int ,int ) ;
 int rdpsnd_init_packet (int *,int,int) ;
 int rdpsnd_send (int *,int ) ;
 int s_mark_end (int ) ;

__attribute__((used)) static void
rdpsnd_process_servertick(RDPCLIENT * This, STREAM in)
{
 uint16 tick1, tick2;
 STREAM out;


 in_uint16_le(in, tick1);
 in_uint16_le(in, tick2);

 out = rdpsnd_init_packet(This, RDPSND_SERVERTICK | 0x2300, 4);
 out_uint16_le(out, tick1);
 out_uint16_le(out, tick2);
 s_mark_end(out);
 rdpsnd_send(This, out);
}
