
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zc_guid; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int zio_clear_fault (int) ;

__attribute__((used)) static int
zfs_ioc_clear_fault(zfs_cmd_t *zc)
{
 return (zio_clear_fault((int)zc->zc_guid));
}
