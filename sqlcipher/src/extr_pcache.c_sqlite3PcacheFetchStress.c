
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_pcache_page ;
struct TYPE_10__ {int * (* xFetch ) (int ,int ,int) ;int (* xPagecount ) (int ) ;} ;
struct TYPE_13__ {TYPE_1__ pcache2; } ;
struct TYPE_12__ {int eCreate; scalar_t__ szSpill; int (* xStress ) (int ,TYPE_2__*) ;int pCache; int pStress; TYPE_2__* pDirtyTail; TYPE_2__* pSynced; } ;
struct TYPE_11__ {int flags; int pgno; struct TYPE_11__* pDirtyPrev; scalar_t__ nRef; } ;
typedef int Pgno ;
typedef TYPE_2__ PgHdr ;
typedef TYPE_3__ PCache ;


 int PGHDR_NEED_SYNC ;
 int SQLITE_BUSY ;
 int SQLITE_FULL ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int numberOfCachePages (TYPE_3__*) ;
 int pcacheDump (TYPE_3__*) ;
 int pcacheTrace (char*) ;
 TYPE_7__ sqlite3GlobalConfig ;
 scalar_t__ sqlite3PcachePagecount (TYPE_3__*) ;
 int sqlite3_log (int ,char*,int ,int ,int ,int ) ;
 int stub1 (int ) ;
 int stub2 (int ,TYPE_2__*) ;
 int * stub3 (int ,int ,int) ;

int sqlite3PcacheFetchStress(
  PCache *pCache,
  Pgno pgno,
  sqlite3_pcache_page **ppPage
){
  PgHdr *pPg;
  if( pCache->eCreate==2 ) return 0;

  if( sqlite3PcachePagecount(pCache)>pCache->szSpill ){
    for(pPg=pCache->pSynced;
        pPg && (pPg->nRef || (pPg->flags&PGHDR_NEED_SYNC));
        pPg=pPg->pDirtyPrev
    );
    pCache->pSynced = pPg;
    if( !pPg ){
      for(pPg=pCache->pDirtyTail; pPg && pPg->nRef; pPg=pPg->pDirtyPrev);
    }
    if( pPg ){
      int rc;







      pcacheTrace(("%p.SPILL %d\n",pCache,pPg->pgno));
      rc = pCache->xStress(pCache->pStress, pPg);
      pcacheDump(pCache);
      if( rc!=SQLITE_OK && rc!=SQLITE_BUSY ){
        return rc;
      }
    }
  }
  *ppPage = sqlite3GlobalConfig.pcache2.xFetch(pCache->pCache, pgno, 2);
  return *ppPage==0 ? SQLITE_NOMEM_BKPT : SQLITE_OK;
}
