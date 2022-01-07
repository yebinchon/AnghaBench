
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zfs_props; scalar_t__ zfs_recvd_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int boolean_t ;



__attribute__((used)) static boolean_t
zfs_is_recvd_props_mode(zfs_handle_t *zhp)
{
 return (zhp->zfs_props == zhp->zfs_recvd_props);
}
