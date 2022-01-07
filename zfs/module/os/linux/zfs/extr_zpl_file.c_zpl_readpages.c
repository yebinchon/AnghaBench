
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int filler_t ;


 int read_cache_pages (struct address_space*,struct list_head*,int *,struct file*) ;
 scalar_t__ zpl_readpage ;

__attribute__((used)) static int
zpl_readpages(struct file *filp, struct address_space *mapping,
    struct list_head *pages, unsigned nr_pages)
{
 return (read_cache_pages(mapping, pages,
     (filler_t *)zpl_readpage, filp));
}
