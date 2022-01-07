
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chmcTreeNode {size_t prefixlen; int * name; } ;


 int strcmp (int *,int *) ;

__attribute__((used)) static int _entry_cmp(const void *pva, const void *pvb)
{
 const struct chmcTreeNode * const *pa = pva;
 const struct chmcTreeNode * const *pb = pvb;
 const struct chmcTreeNode *a = *pa, *b = *pb;

 return strcmp( &a->name[a->prefixlen], &b->name[b->prefixlen] );
}
