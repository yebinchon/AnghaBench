
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int parent_name (int ,char*,size_t) ;
 int zfs_get_name (int *) ;

int
zfs_parent_name(zfs_handle_t *zhp, char *buf, size_t buflen)
{
 return (parent_name(zfs_get_name(zhp), buf, buflen));
}
