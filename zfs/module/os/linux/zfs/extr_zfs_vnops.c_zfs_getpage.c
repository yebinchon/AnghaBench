
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int znode_t ;
typedef int zfsvfs_t ;
struct page {int dummy; } ;
struct inode {int dummy; } ;


 int * ITOZ (struct inode*) ;
 int * ITOZSB (struct inode*) ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (int *) ;
 int zfs_fillpage (struct inode*,struct page**,int) ;

int
zfs_getpage(struct inode *ip, struct page *pl[], int nr_pages)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 int err;

 if (pl == ((void*)0))
  return (0);

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 err = zfs_fillpage(ip, pl, nr_pages);

 ZFS_EXIT(zfsvfs);
 return (err);
}
