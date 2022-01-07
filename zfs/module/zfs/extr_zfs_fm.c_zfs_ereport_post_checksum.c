
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_bad_cksum_t ;
typedef int zfs_ecksum_info_t ;
typedef int zbookmark_phys_t ;
typedef int vdev_t ;
typedef int uint64_t ;
struct zio {int dummy; } ;
typedef int spa_t ;
typedef int nvlist_t ;
typedef int abd_t ;


 int B_FALSE ;
 int EBUSY ;
 int EINVAL ;
 int FM_EREPORT_ZFS_CHECKSUM ;
 int SET_ERROR (int ) ;
 int * annotate_ecksum (int *,int *,int const*,int const*,int ,int ) ;
 int kmem_free (int *,int) ;
 int zfs_ereport_start (int **,int **,int ,int *,int *,int const*,struct zio*,int ,int ) ;
 scalar_t__ zfs_is_ratelimiting_event (int ,int *) ;
 int zfs_zevent_post (int *,int *,int ) ;
 int zfs_zevent_post_cb ;

int
zfs_ereport_post_checksum(spa_t *spa, vdev_t *vd, const zbookmark_phys_t *zb,
    struct zio *zio, uint64_t offset, uint64_t length,
    const abd_t *good_data, const abd_t *bad_data, zio_bad_cksum_t *zbc)
{
 int rc = 0;
 return (rc);
}
