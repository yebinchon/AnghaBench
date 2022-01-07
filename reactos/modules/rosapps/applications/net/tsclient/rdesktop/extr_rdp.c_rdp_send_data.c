
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_13__ {int mcs_userid; scalar_t__ encryption; int rdp_shareid; } ;
struct TYPE_12__ {scalar_t__ p; scalar_t__ end; } ;
typedef TYPE_1__* STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int BOOL ;


 int RDP_PDU_DATA ;
 int SEC_ENCRYPT ;
 int out_uint16 (TYPE_1__*,int ) ;
 int out_uint16_le (TYPE_1__*,int) ;
 int out_uint32_le (TYPE_1__*,int ) ;
 int out_uint8 (TYPE_1__*,int) ;
 int rdp_hdr ;
 int s_pop_layer (TYPE_1__*,int ) ;
 int sec_send (TYPE_2__*,TYPE_1__*,int ) ;

__attribute__((used)) static BOOL
rdp_send_data(RDPCLIENT * This, STREAM s, uint8 data_pdu_type)
{
 uint16 length;

 s_pop_layer(s, rdp_hdr);
 length = (uint16)(s->end - s->p);

 out_uint16_le(s, length);
 out_uint16_le(s, (RDP_PDU_DATA | 0x10));
 out_uint16_le(s, (This->mcs_userid + 1001));

 out_uint32_le(s, This->rdp_shareid);
 out_uint8(s, 0);
 out_uint8(s, 1);
 out_uint16_le(s, (length - 14));
 out_uint8(s, data_pdu_type);
 out_uint8(s, 0);
 out_uint16(s, 0);

 return sec_send(This, s, This->encryption ? SEC_ENCRYPT : 0);
}
