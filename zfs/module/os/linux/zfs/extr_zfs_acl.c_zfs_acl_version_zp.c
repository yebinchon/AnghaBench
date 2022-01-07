
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int znode_t ;
struct TYPE_2__ {int z_version; } ;


 TYPE_1__* ZTOZSB (int *) ;
 int zfs_acl_version (int ) ;

__attribute__((used)) static int
zfs_acl_version_zp(znode_t *zp)
{
 return (zfs_acl_version(ZTOZSB(zp)->z_version));
}
