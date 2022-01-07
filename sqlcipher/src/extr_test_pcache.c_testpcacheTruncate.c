
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ iMagic; scalar_t__ nPinned; unsigned int nFree; TYPE_1__* a; } ;
typedef TYPE_2__ testpcache ;
typedef int sqlite3_pcache ;
struct TYPE_6__ {scalar_t__ pDummy; scalar_t__ nInstance; } ;
struct TYPE_4__ {unsigned int key; scalar_t__ isPinned; } ;


 unsigned int TESTPCACHE_NPAGE ;
 scalar_t__ TESTPCACHE_VALID ;
 int assert (int) ;
 TYPE_3__ testpcacheGlobal ;

__attribute__((used)) static void testpcacheTruncate(sqlite3_pcache *pCache, unsigned iLimit){
  testpcache *p = (testpcache*)pCache;
  unsigned int i;
  assert( p->iMagic==TESTPCACHE_VALID );
  assert( testpcacheGlobal.pDummy!=0 );
  assert( testpcacheGlobal.nInstance>0 );
  for(i=0; i<TESTPCACHE_NPAGE; i++){
    if( p->a[i].key>=iLimit ){
      p->a[i].key = 0;
      if( p->a[i].isPinned ){
        p->nPinned--;
        assert( p->nPinned>=0 );
      }
      p->nFree++;
      assert( p->nFree<=TESTPCACHE_NPAGE );
    }
  }
}
