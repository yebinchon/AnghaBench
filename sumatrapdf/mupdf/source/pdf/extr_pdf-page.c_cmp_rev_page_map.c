
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int object; } ;
typedef TYPE_1__ pdf_rev_page_map ;



__attribute__((used)) static int
cmp_rev_page_map(const void *va, const void *vb)
{
 const pdf_rev_page_map *a = va;
 const pdf_rev_page_map *b = vb;
 return a->object - b->object;
}
