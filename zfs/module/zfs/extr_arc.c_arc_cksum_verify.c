
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zio_cksum_t ;
struct TYPE_10__ {int b_data; TYPE_3__* b_hdr; } ;
typedef TYPE_2__ arc_buf_t ;
struct TYPE_9__ {int b_freeze_lock; int * b_freeze_cksum; } ;
struct TYPE_11__ {TYPE_1__ b_l1hdr; } ;
typedef TYPE_3__ arc_buf_hdr_t ;


 scalar_t__ ARC_BUF_COMPRESSED (TYPE_2__*) ;
 int ASSERT (int ) ;
 int HDR_HAS_L1HDR (TYPE_3__*) ;
 scalar_t__ HDR_IO_ERROR (TYPE_3__*) ;
 int ZFS_DEBUG_MODIFY ;
 int ZIO_CHECKSUM_EQUAL (int ,int ) ;
 int arc_buf_size (TYPE_2__*) ;
 int fletcher_2_native (int ,int ,int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int panic (char*) ;
 int zfs_flags ;

__attribute__((used)) static void
arc_cksum_verify(arc_buf_t *buf)
{
 arc_buf_hdr_t *hdr = buf->b_hdr;
 zio_cksum_t zc;

 if (!(zfs_flags & ZFS_DEBUG_MODIFY))
  return;

 if (ARC_BUF_COMPRESSED(buf))
  return;

 ASSERT(HDR_HAS_L1HDR(hdr));

 mutex_enter(&hdr->b_l1hdr.b_freeze_lock);

 if (hdr->b_l1hdr.b_freeze_cksum == ((void*)0) || HDR_IO_ERROR(hdr)) {
  mutex_exit(&hdr->b_l1hdr.b_freeze_lock);
  return;
 }

 fletcher_2_native(buf->b_data, arc_buf_size(buf), ((void*)0), &zc);
 if (!ZIO_CHECKSUM_EQUAL(*hdr->b_l1hdr.b_freeze_cksum, zc))
  panic("buffer modified while frozen!");
 mutex_exit(&hdr->b_l1hdr.b_freeze_lock);
}
