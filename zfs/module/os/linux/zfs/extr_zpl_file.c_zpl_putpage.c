
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct address_space {int host; } ;
typedef int fstrans_cookie_t ;


 int ASSERT (int) ;
 int PageLocked (struct page*) ;
 int PageWriteback (struct page*) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 int zfs_putpage (int ,struct page*,struct writeback_control*) ;

int
zpl_putpage(struct page *pp, struct writeback_control *wbc, void *data)
{
 struct address_space *mapping = data;
 fstrans_cookie_t cookie;

 ASSERT(PageLocked(pp));
 ASSERT(!PageWriteback(pp));

 cookie = spl_fstrans_mark();
 (void) zfs_putpage(mapping->host, pp, wbc);
 spl_fstrans_unmark(cookie);

 return (0);
}
