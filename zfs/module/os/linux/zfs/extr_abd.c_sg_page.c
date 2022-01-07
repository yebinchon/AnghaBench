
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {struct page* page; } ;
struct page {int dummy; } ;



__attribute__((used)) static inline struct page *
sg_page(struct scatterlist *sg)
{
 return (sg->page);
}
