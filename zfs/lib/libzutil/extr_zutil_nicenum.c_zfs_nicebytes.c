
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ZFS_NICENUM_BYTES ;
 int zfs_nicenum_format (int ,char*,size_t,int ) ;

void
zfs_nicebytes(uint64_t num, char *buf, size_t buflen)
{
 zfs_nicenum_format(num, buf, buflen, ZFS_NICENUM_BYTES);
}
