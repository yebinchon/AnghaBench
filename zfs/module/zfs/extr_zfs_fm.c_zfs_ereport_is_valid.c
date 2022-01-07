
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ io_type; scalar_t__ io_error; int io_timestamp; int io_txg; TYPE_3__* io_vd; } ;
typedef TYPE_2__ zio_t ;
struct TYPE_14__ {scalar_t__ vdev_state; scalar_t__ vdev_remove_wanted; TYPE_1__* vdev_ops; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_15__ {scalar_t__ spa_last_open_failed; } ;
typedef TYPE_4__ spa_t ;
typedef int boolean_t ;
struct TYPE_12__ {scalar_t__ vdev_op_leaf; } ;


 int B_FALSE ;
 int B_TRUE ;
 int DTL_MISSING ;
 scalar_t__ ECKSUM ;
 int FM_EREPORT_ZFS_DELAY ;
 int FM_EREPORT_ZFS_PROBE_FAILURE ;
 scalar_t__ SPA_LOAD_NONE ;
 scalar_t__ SPA_LOAD_RECOVER ;
 scalar_t__ SPA_LOAD_TRYIMPORT ;
 scalar_t__ VDEV_STATE_REMOVED ;
 scalar_t__ ZIO_TYPE_READ ;
 scalar_t__ ZIO_TYPE_WRITE ;
 scalar_t__ spa_load_state (TYPE_4__*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int vdev_accessible (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ vdev_dtl_contains (TYPE_3__*,int ,int ,int) ;

boolean_t
zfs_ereport_is_valid(const char *subclass, spa_t *spa, vdev_t *vd, zio_t *zio)
{
 return (B_TRUE);
}
