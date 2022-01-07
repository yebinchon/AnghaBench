
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_t ;
typedef int zbookmark_phys_t ;
typedef int vdev_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;


 int EBUSY ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int zfs_ereport_start (int **,int **,char const*,int *,int *,int const*,int *,int ,int ) ;
 scalar_t__ zfs_is_ratelimiting_event (char const*,int *) ;
 int zfs_zevent_post (int *,int *,int ) ;
 int zfs_zevent_post_cb ;

int
zfs_ereport_post(const char *subclass, spa_t *spa, vdev_t *vd,
    const zbookmark_phys_t *zb, zio_t *zio, uint64_t stateoroffset,
    uint64_t size)
{
 int rc = 0;
 return (rc);
}
