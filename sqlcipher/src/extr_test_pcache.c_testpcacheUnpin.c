
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iMagic; scalar_t__ nPinned; int nFree; TYPE_1__* a; scalar_t__ bPurgeable; } ;
typedef TYPE_2__ testpcache ;
typedef int sqlite3_pcache_page ;
typedef int sqlite3_pcache ;
struct TYPE_7__ {scalar_t__ pDummy; scalar_t__ nInstance; int discardChance; } ;
struct TYPE_5__ {int isPinned; scalar_t__ key; int page; } ;


 int TESTPCACHE_NPAGE ;
 scalar_t__ TESTPCACHE_VALID ;
 int assert (int) ;
 TYPE_4__ testpcacheGlobal ;
 int testpcacheRandom (TYPE_2__*) ;

__attribute__((used)) static void testpcacheUnpin(
  sqlite3_pcache *pCache,
  sqlite3_pcache_page *pOldPage,
  int discard
){
  testpcache *p = (testpcache*)pCache;
  int i;
  assert( p->iMagic==TESTPCACHE_VALID );
  assert( testpcacheGlobal.pDummy!=0 );
  assert( testpcacheGlobal.nInstance>0 );





  if( p->bPurgeable
  && (100-testpcacheGlobal.discardChance) <= (testpcacheRandom(p)%100)
  ){
    discard = 1;
  }

  for(i=0; i<TESTPCACHE_NPAGE; i++){
    if( &p->a[i].page==pOldPage ){

      assert( p->a[i].isPinned );
      p->a[i].isPinned = 0;
      p->nPinned--;
      assert( p->nPinned>=0 );
      if( discard ){
        p->a[i].key = 0;
        p->nFree++;
        assert( p->nFree<=TESTPCACHE_NPAGE );
      }
      return;
    }
  }


  assert( 0 );
}
