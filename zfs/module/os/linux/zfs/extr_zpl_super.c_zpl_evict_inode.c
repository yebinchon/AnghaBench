
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int fstrans_cookie_t ;


 int clear_inode (struct inode*) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int truncate_setsize (struct inode*,int ) ;
 int zfs_inactive (struct inode*) ;

__attribute__((used)) static void
zpl_evict_inode(struct inode *ip)
{
 fstrans_cookie_t cookie;

 cookie = spl_fstrans_mark();
 truncate_setsize(ip, 0);
 clear_inode(ip);
 zfs_inactive(ip);
 spl_fstrans_unmark(cookie);
}
