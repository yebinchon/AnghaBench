
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;


 int ENOSYS ;
 int SET_ERROR (int ) ;

__attribute__((used)) static int
zfs_ioc_share(zfs_cmd_t *zc)
{
 return (SET_ERROR(ENOSYS));
}
