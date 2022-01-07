
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int server_depth; scalar_t__ bitmap_compression; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int RDP_CAPLEN_BITMAP ;
 int RDP_CAPSET_BITMAP ;
 int out_uint16 (int ,int) ;
 int out_uint16_le (int ,int) ;

__attribute__((used)) static void
rdp_out_bitmap_caps(RDPCLIENT * This, STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_BITMAP);
 out_uint16_le(s, RDP_CAPLEN_BITMAP);

 out_uint16_le(s, This->server_depth);
 out_uint16_le(s, 1);
 out_uint16_le(s, 1);
 out_uint16_le(s, 1);
 out_uint16_le(s, 800);
 out_uint16_le(s, 600);
 out_uint16(s, 0);
 out_uint16(s, 1);
 out_uint16_le(s, This->bitmap_compression ? 1 : 0);
 out_uint16(s, 0);
 out_uint16_le(s, 1);
 out_uint16(s, 0);
}
