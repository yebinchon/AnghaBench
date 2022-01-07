
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int fstrans_cookie_t ;


 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int zfs_dirty_inode (struct inode*,int ) ;

__attribute__((used)) static void
zpl_dirty_inode(struct inode *ip)
{
 fstrans_cookie_t cookie;

 cookie = spl_fstrans_mark();
 zfs_dirty_inode(ip, 0);
 spl_fstrans_unmark(cookie);
}
