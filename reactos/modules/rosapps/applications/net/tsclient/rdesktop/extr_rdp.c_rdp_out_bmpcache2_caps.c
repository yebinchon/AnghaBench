
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bitmap_cache_persist_enable; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;


 int BMPCACHE2_C0_CELLS ;
 int BMPCACHE2_C1_CELLS ;
 int BMPCACHE2_C2_CELLS ;
 int BMPCACHE2_FLAG_PERSIST ;
 int BMPCACHE2_NUM_PSTCELLS ;
 int RDP_CAPLEN_BMPCACHE2 ;
 int RDP_CAPSET_BMPCACHE2 ;
 int out_uint16_be (int ,int) ;
 int out_uint16_le (int ,int) ;
 int out_uint32_le (int ,int) ;
 int out_uint8s (int ,int) ;
 scalar_t__ pstcache_init (TYPE_1__*,int) ;

__attribute__((used)) static void
rdp_out_bmpcache2_caps(RDPCLIENT * This, STREAM s)
{
 out_uint16_le(s, RDP_CAPSET_BMPCACHE2);
 out_uint16_le(s, RDP_CAPLEN_BMPCACHE2);

 out_uint16_le(s, This->bitmap_cache_persist_enable ? 2 : 0);

 out_uint16_be(s, 3);


 out_uint32_le(s, BMPCACHE2_C0_CELLS);
 out_uint32_le(s, BMPCACHE2_C1_CELLS);
 if (pstcache_init(This, 2))
 {
  out_uint32_le(s, BMPCACHE2_NUM_PSTCELLS | BMPCACHE2_FLAG_PERSIST);
 }
 else
 {
  out_uint32_le(s, BMPCACHE2_C2_CELLS);
 }
 out_uint8s(s, 20);
}
