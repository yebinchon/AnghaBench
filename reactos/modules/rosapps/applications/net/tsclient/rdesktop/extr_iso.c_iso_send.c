
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_7__ {scalar_t__ p; scalar_t__ end; } ;
typedef TYPE_1__* STREAM ;
typedef int RDPCLIENT ;
typedef int BOOL ;


 int ISO_PDU_DT ;
 int iso_hdr ;
 int out_uint16_be (TYPE_1__*,scalar_t__) ;
 int out_uint8 (TYPE_1__*,int) ;
 int s_pop_layer (TYPE_1__*,int ) ;
 int tcp_send (int *,TYPE_1__*) ;

BOOL
iso_send(RDPCLIENT * This, STREAM s)
{
 uint16 length;

 s_pop_layer(s, iso_hdr);
 length = (uint16)(s->end - s->p);

 out_uint8(s, 3);
 out_uint8(s, 0);
 out_uint16_be(s, length);

 out_uint8(s, 2);
 out_uint8(s, ISO_PDU_DT);
 out_uint8(s, 0x80);

 return tcp_send(This, s);
}
