
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_prop_t ;
typedef int boolean_t ;


 scalar_t__ ZFS_PROP_KEYFORMAT ;
 scalar_t__ ZFS_PROP_PBKDF2_ITERS ;
 scalar_t__ ZFS_PROP_PBKDF2_SALT ;

boolean_t
zfs_prop_encryption_key_param(zfs_prop_t prop)
{




 return (prop == ZFS_PROP_PBKDF2_SALT || prop == ZFS_PROP_PBKDF2_ITERS ||
     prop == ZFS_PROP_KEYFORMAT);
}
