
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_pcache_page ;
struct TYPE_3__ {scalar_t__ pPCache; scalar_t__ hasHeldSharedLock; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_1__ Pager ;
typedef int DbPage ;


 int assert (int) ;
 int * sqlite3PcacheFetch (scalar_t__,scalar_t__,int ) ;
 int * sqlite3PcacheFetchFinish (scalar_t__,scalar_t__,int *) ;

DbPage *sqlite3PagerLookup(Pager *pPager, Pgno pgno){
  sqlite3_pcache_page *pPage;
  assert( pPager!=0 );
  assert( pgno!=0 );
  assert( pPager->pPCache!=0 );
  pPage = sqlite3PcacheFetch(pPager->pPCache, pgno, 0);
  assert( pPage==0 || pPager->hasHeldSharedLock );
  if( pPage==0 ) return 0;
  return sqlite3PcacheFetchFinish(pPager->pPCache, pgno, pPage);
}
