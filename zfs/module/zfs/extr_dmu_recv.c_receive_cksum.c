
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int drc_cksum; scalar_t__ drc_byteswap; } ;
typedef TYPE_1__ dmu_recv_cookie_t ;


 int fletcher_4_incremental_byteswap (void*,int,int *) ;
 int fletcher_4_incremental_native (void*,int,int *) ;

__attribute__((used)) static void
receive_cksum(dmu_recv_cookie_t *drc, int len, void *buf)
{
 if (drc->drc_byteswap) {
  (void) fletcher_4_incremental_byteswap(buf, len,
      &drc->drc_cksum);
 } else {
  (void) fletcher_4_incremental_native(buf, len, &drc->drc_cksum);
 }
}
