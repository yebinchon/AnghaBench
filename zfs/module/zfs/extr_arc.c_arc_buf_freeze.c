
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_hdr; } ;
typedef TYPE_1__ arc_buf_t ;


 scalar_t__ ARC_BUF_COMPRESSED (TYPE_1__*) ;
 int ASSERT (int ) ;
 int HDR_HAS_L1HDR (int ) ;
 int ZFS_DEBUG_MODIFY ;
 int arc_cksum_compute (TYPE_1__*) ;
 int zfs_flags ;

void
arc_buf_freeze(arc_buf_t *buf)
{
 if (!(zfs_flags & ZFS_DEBUG_MODIFY))
  return;

 if (ARC_BUF_COMPRESSED(buf))
  return;

 ASSERT(HDR_HAS_L1HDR(buf->b_hdr));
 arc_cksum_compute(buf);
}
