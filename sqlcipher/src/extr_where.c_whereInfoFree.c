
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_13__ {struct TYPE_13__* pNextLoop; } ;
typedef TYPE_4__ WhereLoop ;
struct TYPE_11__ {int aInLoop; } ;
struct TYPE_12__ {TYPE_2__ in; } ;
struct TYPE_14__ {TYPE_3__ u; TYPE_1__* pWLoop; } ;
typedef TYPE_5__ WhereLevel ;
struct TYPE_15__ {int nLevel; TYPE_4__* pLoops; int sWC; TYPE_5__* a; } ;
typedef TYPE_6__ WhereInfo ;
struct TYPE_10__ {int wsFlags; } ;


 int WHERE_IN_ABLE ;
 int assert (int) ;
 int sqlite3DbFree (int *,int ) ;
 int sqlite3DbFreeNN (int *,TYPE_6__*) ;
 int sqlite3WhereClauseClear (int *) ;
 int whereLoopDelete (int *,TYPE_4__*) ;

__attribute__((used)) static void whereInfoFree(sqlite3 *db, WhereInfo *pWInfo){
  int i;
  assert( pWInfo!=0 );
  for(i=0; i<pWInfo->nLevel; i++){
    WhereLevel *pLevel = &pWInfo->a[i];
    if( pLevel->pWLoop && (pLevel->pWLoop->wsFlags & WHERE_IN_ABLE) ){
      sqlite3DbFree(db, pLevel->u.in.aInLoop);
    }
  }
  sqlite3WhereClauseClear(&pWInfo->sWC);
  while( pWInfo->pLoops ){
    WhereLoop *p = pWInfo->pLoops;
    pWInfo->pLoops = p->pNextLoop;
    whereLoopDelete(db, p);
  }
  sqlite3DbFreeNN(db, pWInfo);
}
