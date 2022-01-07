
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int VCHANNEL ;
struct TYPE_4__ {scalar_t__ encryption; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int SEC_ENCRYPT ;
 int channel_hdr ;
 int s_push_layer (int ,int ,int) ;
 int sec_init (TYPE_1__*,int ,scalar_t__) ;

STREAM
channel_init(RDPCLIENT * This, VCHANNEL * channel, uint32 length)
{
 STREAM s;

 s = sec_init(This, This->encryption ? SEC_ENCRYPT : 0, length + 8);
 s_push_layer(s, channel_hdr, 8);
 return s;
}
