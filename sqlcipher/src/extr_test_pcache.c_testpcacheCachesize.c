
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iMagic; } ;
typedef TYPE_1__ testpcache ;
typedef int sqlite3_pcache ;
struct TYPE_4__ {scalar_t__ pDummy; scalar_t__ nInstance; } ;


 scalar_t__ TESTPCACHE_VALID ;
 int assert (int) ;
 TYPE_2__ testpcacheGlobal ;

__attribute__((used)) static void testpcacheCachesize(sqlite3_pcache *pCache, int newSize){
  testpcache *p = (testpcache*)pCache;
  assert( p->iMagic==TESTPCACHE_VALID );
  assert( testpcacheGlobal.pDummy!=0 );
  assert( testpcacheGlobal.nInstance>0 );
}
