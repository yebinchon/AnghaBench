
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int server_depth; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int RDP_CAPLEN_BMPCACHE ;
 int RDP_CAPSET_BMPCACHE ;
 int out_uint16_le (int ,int) ;
 int out_uint8s (int ,int) ;

__attribute__((used)) static void
rdp_out_bmpcache_caps(RDPCLIENT * This, STREAM s)
{
 int Bpp;
 out_uint16_le(s, RDP_CAPSET_BMPCACHE);
 out_uint16_le(s, RDP_CAPLEN_BMPCACHE);

 Bpp = (This->server_depth + 7) / 8;
 out_uint8s(s, 24);
 out_uint16_le(s, 0x258);
 out_uint16_le(s, 0x100 * Bpp);
 out_uint16_le(s, 0x12c);
 out_uint16_le(s, 0x400 * Bpp);
 out_uint16_le(s, 0x106);
 out_uint16_le(s, 0x1000 * Bpp);
}
