
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pDirty; } ;
struct TYPE_7__ {struct TYPE_7__* pDirtyNext; struct TYPE_7__* pDirty; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ PCache ;


 TYPE_1__* pcacheSortDirtyList (TYPE_1__*) ;

PgHdr *sqlite3PcacheDirtyList(PCache *pCache){
  PgHdr *p;
  for(p=pCache->pDirty; p; p=p->pDirtyNext){
    p->pDirty = p->pDirtyNext;
  }
  return pcacheSortDirtyList(pCache->pDirty);
}
