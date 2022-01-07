
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iMagic; } ;
typedef TYPE_1__ testpcache ;
typedef int sqlite3_pcache ;
struct TYPE_5__ {scalar_t__ pDummy; scalar_t__ nInstance; } ;


 scalar_t__ TESTPCACHE_CLEAR ;
 scalar_t__ TESTPCACHE_VALID ;
 int assert (int) ;
 int sqlite3_free (TYPE_1__*) ;
 TYPE_2__ testpcacheGlobal ;

__attribute__((used)) static void testpcacheDestroy(sqlite3_pcache *pCache){
  testpcache *p = (testpcache*)pCache;
  assert( p->iMagic==TESTPCACHE_VALID );
  assert( testpcacheGlobal.pDummy!=0 );
  assert( testpcacheGlobal.nInstance>0 );
  p->iMagic = TESTPCACHE_CLEAR;
  sqlite3_free(p);
  testpcacheGlobal.nInstance--;
}
