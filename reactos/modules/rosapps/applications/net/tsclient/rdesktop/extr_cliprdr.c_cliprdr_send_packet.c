
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_6__ {int channel; } ;
struct TYPE_7__ {TYPE_1__ cliprdr; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;


 int DEBUG_CLIPBOARD (char*) ;
 int channel_init (TYPE_2__*,int ,int ) ;
 int channel_send (TYPE_2__*,int ,int ) ;
 int out_uint16_le (int ,int ) ;
 int out_uint32 (int ,int ) ;
 int out_uint32_le (int ,int ) ;
 int out_uint8p (int ,int *,int ) ;
 int s_mark_end (int ) ;

__attribute__((used)) static void
cliprdr_send_packet(RDPCLIENT * This, uint16 type, uint16 status, uint8 * data, uint32 length)
{
 STREAM s;

 DEBUG_CLIPBOARD(("CLIPRDR send: type=%d, status=%d, length=%d\n", type, status, length));

 s = channel_init(This, This->cliprdr.channel, length + 12);
 out_uint16_le(s, type);
 out_uint16_le(s, status);
 out_uint32_le(s, length);
 out_uint8p(s, data, length);
 out_uint32(s, 0);
 s_mark_end(s);
 channel_send(This, s, This->cliprdr.channel);
}
