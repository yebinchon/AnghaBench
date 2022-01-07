
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ iMagic; int nPinned; int nFree; scalar_t__ bPurgeable; TYPE_1__* a; int szExtra; int szPage; } ;
typedef TYPE_2__ testpcache ;
struct TYPE_9__ {int pExtra; int pBuf; } ;
typedef TYPE_3__ sqlite3_pcache_page ;
typedef int sqlite3_pcache ;
struct TYPE_10__ {scalar_t__ pDummy; scalar_t__ nInstance; scalar_t__ highStress; } ;
struct TYPE_7__ {unsigned int key; int isPinned; TYPE_3__ page; } ;


 int TESTPCACHE_NPAGE ;
 int TESTPCACHE_RESERVE ;
 scalar_t__ TESTPCACHE_VALID ;
 int assert (int) ;
 int memset (int ,int ,int ) ;
 TYPE_5__ testpcacheGlobal ;
 int testpcacheRandom (TYPE_2__*) ;

__attribute__((used)) static sqlite3_pcache_page *testpcacheFetch(
  sqlite3_pcache *pCache,
  unsigned key,
  int createFlag
){
  testpcache *p = (testpcache*)pCache;
  int i, j;
  assert( p->iMagic==TESTPCACHE_VALID );
  assert( testpcacheGlobal.pDummy!=0 );
  assert( testpcacheGlobal.nInstance>0 );


  for(i=0; i<TESTPCACHE_NPAGE; i++){
    if( p->a[i].key==key ){
      if( !p->a[i].isPinned ){
        p->nPinned++;
        assert( p->nPinned <= TESTPCACHE_NPAGE - p->nFree );
        p->a[i].isPinned = 1;
      }
      return &p->a[i].page;
    }
  }


  if( createFlag==0 ){
    return 0;
  }


  if( p->nPinned==TESTPCACHE_NPAGE ){
    return 0;
  }


  if( p->nPinned>=TESTPCACHE_NPAGE-TESTPCACHE_RESERVE && createFlag<2 ){
    return 0;
  }






  if( testpcacheGlobal.highStress && createFlag<2 ){
    return 0;
  }




  if( p->nFree>TESTPCACHE_RESERVE || (createFlag==2 && p->nFree>0) ){
    j = testpcacheRandom(p) % TESTPCACHE_NPAGE;
    for(i=0; i<TESTPCACHE_NPAGE; i++, j = (j+1)%TESTPCACHE_NPAGE){
      if( p->a[j].key==0 ){
        p->a[j].key = key;
        p->a[j].isPinned = 1;
        memset(p->a[j].page.pBuf, 0, p->szPage);
        memset(p->a[j].page.pExtra, 0, p->szExtra);
        p->nPinned++;
        p->nFree--;
        assert( p->nPinned <= TESTPCACHE_NPAGE - p->nFree );
        return &p->a[j].page;
      }
    }


    assert( 0 );
  }



  if( p->bPurgeable==0 ){
    return 0;
  }




  j = testpcacheRandom(p) % TESTPCACHE_NPAGE;
  for(i=0; i<TESTPCACHE_NPAGE; i++, j = (j+1)%TESTPCACHE_NPAGE){
    if( p->a[j].key>0 && p->a[j].isPinned==0 ){
      p->a[j].key = key;
      p->a[j].isPinned = 1;
      memset(p->a[j].page.pBuf, 0, p->szPage);
      memset(p->a[j].page.pExtra, 0, p->szExtra);
      p->nPinned++;
      assert( p->nPinned <= TESTPCACHE_NPAGE - p->nFree );
      return &p->a[j].page;
    }
  }


  assert(0);
  return 0;
}
