
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_id; } ;
typedef TYPE_1__ znode_t ;
typedef int uint64_t ;
struct TYPE_6__ {scalar_t__ z_version; } ;


 int IFTODT (int) ;
 scalar_t__ ZPL_VERSION_DIRENT_TYPE ;
 TYPE_3__* ZTOZSB (TYPE_1__*) ;

__attribute__((used)) static uint64_t
zfs_dirent(znode_t *zp, uint64_t mode)
{
 uint64_t de = zp->z_id;

 if (ZTOZSB(zp)->z_version >= ZPL_VERSION_DIRENT_TYPE)
  de |= IFTODT(mode) << 60;
 return (de);
}
