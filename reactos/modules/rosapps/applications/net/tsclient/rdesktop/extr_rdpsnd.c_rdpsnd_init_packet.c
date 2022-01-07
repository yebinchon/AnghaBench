
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_5__ {int channel; } ;
struct TYPE_6__ {TYPE_1__ rdpsnd; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;


 int channel_init (TYPE_2__*,int ,int ) ;
 int out_uint16_le (int ,int ) ;

__attribute__((used)) static STREAM
rdpsnd_init_packet(RDPCLIENT * This, uint16 type, uint16 size)
{
 STREAM s;

 s = channel_init(This, This->rdpsnd.channel, size + 4);
 out_uint16_le(s, type);
 out_uint16_le(s, size);
 return s;
}
