
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3_pcache ;
struct TYPE_6__ {int (* xDestroy ) (int *) ;int (* xCachesize ) (int *,int ) ;int * (* xCreate ) (int,scalar_t__,int ) ;} ;
struct TYPE_8__ {TYPE_1__ pcache2; } ;
struct TYPE_7__ {scalar_t__ nRefSum; scalar_t__ pDirty; int szPage; int * pCache; int bPurgeable; scalar_t__ szExtra; } ;
typedef int PgHdr ;
typedef TYPE_2__ PCache ;


 scalar_t__ ROUND8 (int) ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int numberOfCachePages (TYPE_2__*) ;
 int pcacheTrace (char*) ;
 TYPE_4__ sqlite3GlobalConfig ;
 int * stub1 (int,scalar_t__,int ) ;
 int stub2 (int *,int ) ;
 int stub3 (int *) ;

int sqlite3PcacheSetPageSize(PCache *pCache, int szPage){
  assert( pCache->nRefSum==0 && pCache->pDirty==0 );
  if( pCache->szPage ){
    sqlite3_pcache *pNew;
    pNew = sqlite3GlobalConfig.pcache2.xCreate(
                szPage, pCache->szExtra + ROUND8(sizeof(PgHdr)),
                pCache->bPurgeable
    );
    if( pNew==0 ) return SQLITE_NOMEM_BKPT;
    sqlite3GlobalConfig.pcache2.xCachesize(pNew, numberOfCachePages(pCache));
    if( pCache->pCache ){
      sqlite3GlobalConfig.pcache2.xDestroy(pCache->pCache);
    }
    pCache->pCache = pNew;
    pCache->szPage = szPage;
    pcacheTrace(("%p.PAGESIZE %d\n",pCache,szPage));
  }
  return SQLITE_OK;
}
