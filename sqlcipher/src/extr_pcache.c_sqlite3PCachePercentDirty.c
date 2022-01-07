
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_6__ {TYPE_1__* pDirty; } ;
struct TYPE_5__ {struct TYPE_5__* pDirtyNext; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ PCache ;


 int numberOfCachePages (TYPE_2__*) ;

int sqlite3PCachePercentDirty(PCache *pCache){
  PgHdr *pDirty;
  int nDirty = 0;
  int nCache = numberOfCachePages(pCache);
  for(pDirty=pCache->pDirty; pDirty; pDirty=pDirty->pDirtyNext) nDirty++;
  return nCache ? (int)(((i64)nDirty * 100) / nCache) : 0;
}
