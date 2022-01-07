
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageError (struct page*) ;
 int end_page_writeback (struct page*) ;

__attribute__((used)) static void
zfs_putpage_commit_cb(void *arg)
{
 struct page *pp = arg;

 ClearPageError(pp);
 end_page_writeback(pp);
}
