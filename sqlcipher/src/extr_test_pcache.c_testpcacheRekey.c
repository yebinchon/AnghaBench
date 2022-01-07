
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ iMagic; int nFree; TYPE_1__* a; } ;
typedef TYPE_2__ testpcache ;
typedef int sqlite3_pcache_page ;
typedef int sqlite3_pcache ;
struct TYPE_6__ {scalar_t__ pDummy; scalar_t__ nInstance; } ;
struct TYPE_4__ {unsigned int key; int isPinned; int page; } ;


 int TESTPCACHE_NPAGE ;
 scalar_t__ TESTPCACHE_VALID ;
 int assert (int) ;
 TYPE_3__ testpcacheGlobal ;

__attribute__((used)) static void testpcacheRekey(
  sqlite3_pcache *pCache,
  sqlite3_pcache_page *pOldPage,
  unsigned oldKey,
  unsigned newKey
){
  testpcache *p = (testpcache*)pCache;
  int i;
  assert( p->iMagic==TESTPCACHE_VALID );
  assert( testpcacheGlobal.pDummy!=0 );
  assert( testpcacheGlobal.nInstance>0 );




  for(i=0; i<TESTPCACHE_NPAGE; i++){
    if( p->a[i].key==newKey ){

      assert( p->a[i].isPinned==0 );
      p->a[i].key = 0;
      p->nFree++;
      assert( p->nFree<=TESTPCACHE_NPAGE );
      break;
    }
  }



  for(i=0; i<TESTPCACHE_NPAGE; i++){
    if( p->a[i].key==oldKey ){

      assert( &p->a[i].page==pOldPage );

      assert( p->a[i].isPinned );
      p->a[i].key = newKey;
      return;
    }
  }


  assert( 0 );
}
