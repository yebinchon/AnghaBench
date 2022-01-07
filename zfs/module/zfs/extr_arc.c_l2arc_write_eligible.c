
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int boolean_t ;
struct TYPE_6__ {scalar_t__ b_spa; } ;
typedef TYPE_1__ arc_buf_hdr_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ HDR_HAS_L2HDR (TYPE_1__*) ;
 scalar_t__ HDR_IO_IN_PROGRESS (TYPE_1__*) ;
 int HDR_L2CACHE (TYPE_1__*) ;

__attribute__((used)) static boolean_t
l2arc_write_eligible(uint64_t spa_guid, arc_buf_hdr_t *hdr)
{







 if (hdr->b_spa != spa_guid || HDR_HAS_L2HDR(hdr) ||
     HDR_IO_IN_PROGRESS(hdr) || !HDR_L2CACHE(hdr))
  return (B_FALSE);

 return (B_TRUE);
}
