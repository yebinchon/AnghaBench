
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {unsigned int length; struct page* page; } ;
struct page {int dummy; } ;


 int ASSERT (int) ;

__attribute__((used)) static inline void
sg_set_page(struct scatterlist *sg, struct page *page, unsigned int len,
    unsigned int offset)
{

 ASSERT(offset == 0);
 sg->page = page;
 sg->length = len;
}
