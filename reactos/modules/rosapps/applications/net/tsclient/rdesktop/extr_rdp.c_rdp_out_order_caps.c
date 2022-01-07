
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {scalar_t__ desktop_save; scalar_t__ polygon_ellipse_orders; scalar_t__ bitmap_cache; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 scalar_t__ False ;
 int RDP_CAPLEN_ORDER ;
 int RDP_CAPSET_ORDER ;
 int memset (int*,int ,int) ;
 int out_uint16 (int ,int ) ;
 int out_uint16_le (int ,int) ;
 int out_uint32 (int ,int ) ;
 int out_uint32_le (int ,int) ;
 int out_uint8p (int ,int*,int) ;
 int out_uint8s (int ,int) ;

__attribute__((used)) static void
rdp_out_order_caps(RDPCLIENT * This, STREAM s)
{
 uint8 order_caps[32];

 memset(order_caps, 0, 32);
 order_caps[0] = 1;
 order_caps[1] = 1;
 order_caps[2] = 1;
 order_caps[3] = (This->bitmap_cache ? 1 : 0);
 order_caps[4] = 0;
 order_caps[8] = 1;
 order_caps[9] = 1;
 order_caps[10] = 1;
 order_caps[11] = (This->desktop_save ? 1 : 0);
 order_caps[13] = 1;
 order_caps[14] = 1;
 order_caps[20] = (This->polygon_ellipse_orders ? 1 : 0);
 order_caps[21] = (This->polygon_ellipse_orders ? 1 : 0);
 order_caps[22] = 1;
 order_caps[25] = (This->polygon_ellipse_orders ? 1 : 0);
 order_caps[26] = (This->polygon_ellipse_orders ? 1 : 0);
 order_caps[27] = 1;
 out_uint16_le(s, RDP_CAPSET_ORDER);
 out_uint16_le(s, RDP_CAPLEN_ORDER);

 out_uint8s(s, 20);
 out_uint16_le(s, 1);
 out_uint16_le(s, 20);
 out_uint16(s, 0);
 out_uint16_le(s, 1);
 out_uint16_le(s, 0x147);
 out_uint16_le(s, 0x2a);
 out_uint8p(s, order_caps, 32);
 out_uint16_le(s, 0x6a1);
 out_uint8s(s, 6);
 out_uint32_le(s, This->desktop_save == False ? 0 : 0x38400);
 out_uint32(s, 0);
 out_uint32_le(s, 0x4e4);
}
