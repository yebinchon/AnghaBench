
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nCol; scalar_t__ pTmpInsert; TYPE_1__* pRbuUpdate; scalar_t__ pDelete; scalar_t__ pInsert; scalar_t__ pSelect; } ;
struct TYPE_5__ {scalar_t__ pUpdate; struct TYPE_5__* pNext; } ;
typedef TYPE_1__ RbuUpdateStmt ;
typedef TYPE_2__ RbuObjIter ;


 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void rbuObjIterClearStatements(RbuObjIter *pIter){
  RbuUpdateStmt *pUp;

  sqlite3_finalize(pIter->pSelect);
  sqlite3_finalize(pIter->pInsert);
  sqlite3_finalize(pIter->pDelete);
  sqlite3_finalize(pIter->pTmpInsert);
  pUp = pIter->pRbuUpdate;
  while( pUp ){
    RbuUpdateStmt *pTmp = pUp->pNext;
    sqlite3_finalize(pUp->pUpdate);
    sqlite3_free(pUp);
    pUp = pTmp;
  }

  pIter->pSelect = 0;
  pIter->pInsert = 0;
  pIter->pDelete = 0;
  pIter->pRbuUpdate = 0;
  pIter->pTmpInsert = 0;
  pIter->nCol = 0;
}
