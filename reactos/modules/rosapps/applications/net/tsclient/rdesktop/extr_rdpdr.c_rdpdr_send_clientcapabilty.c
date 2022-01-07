
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint8 ;
struct TYPE_6__ {int channel; } ;
struct TYPE_7__ {TYPE_1__ rdpdr; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;


 int channel_init (TYPE_2__*,int ,int) ;
 int channel_send (TYPE_2__*,int ,int ) ;
 int out_uint16_le (int ,int) ;
 int out_uint32_le (int ,int) ;
 int out_uint8a (int ,char*,int) ;
 int s_mark_end (int ) ;

__attribute__((used)) static void
rdpdr_send_clientcapabilty(RDPCLIENT * This)
{
 uint8 magic[4] = "rDPC";
 STREAM s;

 s = channel_init(This, This->rdpdr.channel, 0x50);
 out_uint8a(s, magic, 4);
 out_uint32_le(s, 5);
 out_uint16_le(s, 1);
 out_uint16_le(s, 0x28);
 out_uint32_le(s, 1);
 out_uint32_le(s, 2);
 out_uint16_le(s, 2);
 out_uint16_le(s, 5);
 out_uint16_le(s, 1);
 out_uint16_le(s, 5);
 out_uint16_le(s, 0xFFFF);
 out_uint16_le(s, 0);
 out_uint32_le(s, 0);
 out_uint32_le(s, 3);
 out_uint32_le(s, 0);
 out_uint32_le(s, 0);
 out_uint16_le(s, 2);
 out_uint16_le(s, 8);
 out_uint32_le(s, 1);
 out_uint16_le(s, 3);
 out_uint16_le(s, 8);
 out_uint32_le(s, 1);
 out_uint16_le(s, 4);
 out_uint16_le(s, 8);
 out_uint32_le(s, 1);
 out_uint16_le(s, 5);
 out_uint16_le(s, 8);
 out_uint32_le(s, 1);

 s_mark_end(s);
 channel_send(This, s, This->rdpdr.channel);
}
