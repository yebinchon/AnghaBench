
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int pBuf; } ;
typedef TYPE_2__ sqlite3_pcache_page ;
struct TYPE_10__ {int (* xTruncate ) (scalar_t__,int) ;TYPE_2__* (* xFetch ) (scalar_t__,int,int ) ;} ;
struct TYPE_14__ {TYPE_1__ pcache2; } ;
struct TYPE_13__ {scalar_t__ pCache; int szPage; scalar_t__ nRefSum; TYPE_3__* pDirty; } ;
struct TYPE_12__ {scalar_t__ pgno; int flags; struct TYPE_12__* pDirtyNext; } ;
typedef int Pgno ;
typedef TYPE_3__ PgHdr ;
typedef TYPE_4__ PCache ;


 scalar_t__ ALWAYS (TYPE_2__*) ;
 int PGHDR_DIRTY ;
 int assert (int) ;
 int memset (int ,int ,int ) ;
 int pcacheTrace (char*) ;
 TYPE_8__ sqlite3GlobalConfig ;
 int sqlite3PcacheMakeClean (TYPE_3__*) ;
 TYPE_2__* stub1 (scalar_t__,int,int ) ;
 int stub2 (scalar_t__,int) ;

void sqlite3PcacheTruncate(PCache *pCache, Pgno pgno){
  if( pCache->pCache ){
    PgHdr *p;
    PgHdr *pNext;
    pcacheTrace(("%p.TRUNCATE %d\n",pCache,pgno));
    for(p=pCache->pDirty; p; p=pNext){
      pNext = p->pDirtyNext;




      assert( p->pgno>0 );
      if( p->pgno>pgno ){
        assert( p->flags&PGHDR_DIRTY );
        sqlite3PcacheMakeClean(p);
      }
    }
    if( pgno==0 && pCache->nRefSum ){
      sqlite3_pcache_page *pPage1;
      pPage1 = sqlite3GlobalConfig.pcache2.xFetch(pCache->pCache,1,0);
      if( ALWAYS(pPage1) ){

        memset(pPage1->pBuf, 0, pCache->szPage);
        pgno = 1;
      }
    }
    sqlite3GlobalConfig.pcache2.xTruncate(pCache->pCache, pgno+1);
  }
}
