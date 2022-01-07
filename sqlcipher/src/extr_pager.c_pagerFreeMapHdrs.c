
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMmapFreelist; } ;
struct TYPE_5__ {struct TYPE_5__* pDirty; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ Pager ;


 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void pagerFreeMapHdrs(Pager *pPager){
  PgHdr *p;
  PgHdr *pNext;
  for(p=pPager->pMmapFreelist; p; p=pNext){
    pNext = p->pDirty;
    sqlite3_free(p);
  }
}
