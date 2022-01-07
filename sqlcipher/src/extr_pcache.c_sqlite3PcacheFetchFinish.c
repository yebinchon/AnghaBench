
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ pExtra; } ;
typedef TYPE_1__ sqlite3_pcache_page ;
struct TYPE_13__ {int nRefSum; } ;
struct TYPE_12__ {int nRef; int pPage; } ;
typedef int Pgno ;
typedef TYPE_2__ PgHdr ;
typedef TYPE_3__ PCache ;


 int assert (int) ;
 TYPE_2__* pcacheFetchFinishWithInit (TYPE_3__*,int ,TYPE_1__*) ;
 int sqlite3PcachePageSanity (TYPE_2__*) ;

PgHdr *sqlite3PcacheFetchFinish(
  PCache *pCache,
  Pgno pgno,
  sqlite3_pcache_page *pPage
){
  PgHdr *pPgHdr;

  assert( pPage!=0 );
  pPgHdr = (PgHdr *)pPage->pExtra;

  if( !pPgHdr->pPage ){
    return pcacheFetchFinishWithInit(pCache, pgno, pPage);
  }
  pCache->nRefSum++;
  pPgHdr->nRef++;
  assert( sqlite3PcachePageSanity(pPgHdr) );
  return pPgHdr;
}
