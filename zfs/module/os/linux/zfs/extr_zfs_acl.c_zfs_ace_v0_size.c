
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_oldace_t ;



__attribute__((used)) static size_t
zfs_ace_v0_size(void *acep)
{
 return (sizeof (zfs_oldace_t));
}
