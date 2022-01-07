
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ use_rdp5; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int RDP_CAPLEN_GENERAL ;
 int RDP_CAPSET_GENERAL ;
 int out_uint16 (int ,int ) ;
 int out_uint16_le (int ,int) ;

__attribute__((used)) static void
rdp_out_general_caps(RDPCLIENT * This, STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_GENERAL);
 out_uint16_le(s, RDP_CAPLEN_GENERAL);

 out_uint16_le(s, 1);
 out_uint16_le(s, 3);
 out_uint16_le(s, 0x200);
 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint16_le(s, This->use_rdp5 ? 0x40d : 0);







 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint16(s, 0);
 out_uint16(s, 0);
}
