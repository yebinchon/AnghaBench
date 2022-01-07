
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nParm; struct TYPE_7__* pNext; struct TYPE_7__* pPrev; int * apParm; } ;
struct TYPE_6__ {scalar_t__ maxStmt; scalar_t__ nStmt; TYPE_2__* stmtLast; TYPE_2__* stmtList; } ;
typedef TYPE_1__ SqliteDb ;
typedef TYPE_2__ SqlPreparedStmt ;


 int Tcl_DecrRefCount (int ) ;
 int assert (int) ;
 int dbFreeStmt (TYPE_2__*) ;

__attribute__((used)) static void dbReleaseStmt(
  SqliteDb *pDb,
  SqlPreparedStmt *pPreStmt,
  int discard
){
  int i;


  for(i=0; i<pPreStmt->nParm; i++){
    Tcl_DecrRefCount(pPreStmt->apParm[i]);
  }
  pPreStmt->nParm = 0;

  if( pDb->maxStmt<=0 || discard ){

    dbFreeStmt(pPreStmt);
  }else{

    pPreStmt->pNext = pDb->stmtList;
    pPreStmt->pPrev = 0;
    if( pDb->stmtList ){
     pDb->stmtList->pPrev = pPreStmt;
    }
    pDb->stmtList = pPreStmt;
    if( pDb->stmtLast==0 ){
      assert( pDb->nStmt==0 );
      pDb->stmtLast = pPreStmt;
    }else{
      assert( pDb->nStmt>0 );
    }
    pDb->nStmt++;



    while( pDb->nStmt>pDb->maxStmt ){
      SqlPreparedStmt *pLast = pDb->stmtLast;
      pDb->stmtLast = pLast->pPrev;
      pDb->stmtLast->pNext = 0;
      pDb->nStmt--;
      dbFreeStmt(pLast);
    }
  }
}
