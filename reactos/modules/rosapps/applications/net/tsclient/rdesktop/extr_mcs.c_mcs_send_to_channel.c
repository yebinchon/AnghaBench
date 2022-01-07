
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_11__ {int mcs_userid; } ;
struct TYPE_10__ {int end; int p; } ;
typedef TYPE_1__* STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int MCS_SDRQ ;
 int iso_send (TYPE_2__*,TYPE_1__*) ;
 int mcs_hdr ;
 int out_uint16_be (TYPE_1__*,int) ;
 int out_uint8 (TYPE_1__*,int) ;
 int s_pop_layer (TYPE_1__*,int ) ;

BOOL
mcs_send_to_channel(RDPCLIENT * This, STREAM s, uint16 channel)
{
 uint16 length;

 s_pop_layer(s, mcs_hdr);
 length = (uint16)(s->end - s->p - 8);
 length |= 0x8000;

 out_uint8(s, (MCS_SDRQ << 2));
 out_uint16_be(s, This->mcs_userid);
 out_uint16_be(s, channel);
 out_uint8(s, 0x70);
 out_uint16_be(s, length);

 return iso_send(This, s);
}
