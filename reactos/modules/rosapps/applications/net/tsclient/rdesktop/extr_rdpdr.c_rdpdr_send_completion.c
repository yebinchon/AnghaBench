
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint8 ;
typedef int uint32 ;
struct TYPE_6__ {int channel; } ;
struct TYPE_7__ {TYPE_1__ rdpdr; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;


 int channel_init (TYPE_2__*,int ,int ) ;
 int channel_send (TYPE_2__*,int ,int ) ;
 int out_uint32_le (int ,int ) ;
 int out_uint8a (int ,char*,int) ;
 int out_uint8p (int ,char*,int ) ;
 int printf (char*) ;
 int s_mark_end (int ) ;

__attribute__((used)) static void
rdpdr_send_completion(RDPCLIENT * This, uint32 device, uint32 id, uint32 status, uint32 result, uint8 * buffer,
        uint32 length)
{
 uint8 magic[4] = "rDCI";
 STREAM s;

 s = channel_init(This, This->rdpdr.channel, 20 + length);
 out_uint8a(s, magic, 4);
 out_uint32_le(s, device);
 out_uint32_le(s, id);
 out_uint32_le(s, status);
 out_uint32_le(s, result);
 out_uint8p(s, buffer, length);
 s_mark_end(s);





 channel_send(This, s, This->rdpdr.channel);
}
