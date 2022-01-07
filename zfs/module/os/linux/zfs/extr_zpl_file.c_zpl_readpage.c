
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int fstrans_cookie_t ;
struct TYPE_2__ {struct inode* host; } ;


 int ASSERT (int ) ;
 int ClearPageError (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int PageLocked (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int unlock_page (struct page*) ;
 int zfs_getpage (struct inode*,struct page**,int) ;

__attribute__((used)) static int
zpl_readpage(struct file *filp, struct page *pp)
{
 struct inode *ip;
 struct page *pl[1];
 int error = 0;
 fstrans_cookie_t cookie;

 ASSERT(PageLocked(pp));
 ip = pp->mapping->host;
 pl[0] = pp;

 cookie = spl_fstrans_mark();
 error = -zfs_getpage(ip, pl, 1);
 spl_fstrans_unmark(cookie);

 if (error) {
  SetPageError(pp);
  ClearPageUptodate(pp);
 } else {
  ClearPageError(pp);
  SetPageUptodate(pp);
  flush_dcache_page(pp);
 }

 unlock_page(pp);
 return (error);
}
