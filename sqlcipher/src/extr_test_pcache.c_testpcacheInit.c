
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pDummy; scalar_t__ nInstance; } ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ sqlite3_malloc (int) ;
 TYPE_1__ testpcacheGlobal ;

__attribute__((used)) static int testpcacheInit(void *pArg){
  assert( pArg==(void*)&testpcacheGlobal );
  assert( testpcacheGlobal.pDummy==0 );
  assert( testpcacheGlobal.nInstance==0 );
  testpcacheGlobal.pDummy = sqlite3_malloc(10);
  return testpcacheGlobal.pDummy==0 ? SQLITE_NOMEM : SQLITE_OK;
}
