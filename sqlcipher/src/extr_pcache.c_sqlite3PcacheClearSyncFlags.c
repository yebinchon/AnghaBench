
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pDirtyTail; int pSynced; TYPE_1__* pDirty; } ;
struct TYPE_4__ {int flags; struct TYPE_4__* pDirtyNext; } ;
typedef TYPE_1__ PgHdr ;
typedef TYPE_2__ PCache ;


 int PGHDR_NEED_SYNC ;

void sqlite3PcacheClearSyncFlags(PCache *pCache){
  PgHdr *p;
  for(p=pCache->pDirty; p; p=p->pDirtyNext){
    p->flags &= ~PGHDR_NEED_SYNC;
  }
  pCache->pSynced = pCache->pDirtyTail;
}
