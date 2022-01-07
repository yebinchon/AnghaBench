
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zfs_recvd_props; scalar_t__ zfs_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;



__attribute__((used)) static void
zfs_set_recvd_props_mode(zfs_handle_t *zhp, uint64_t *cookie)
{
 *cookie = (uint64_t)(uintptr_t)zhp->zfs_props;
 zhp->zfs_props = zhp->zfs_recvd_props;
}
