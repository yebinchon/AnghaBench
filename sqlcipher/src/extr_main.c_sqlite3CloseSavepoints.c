
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ isTransactionSavepoint; scalar_t__ nStatement; scalar_t__ nSavepoint; TYPE_2__* pSavepoint; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
typedef TYPE_2__ Savepoint ;


 int sqlite3DbFree (TYPE_1__*,TYPE_2__*) ;

void sqlite3CloseSavepoints(sqlite3 *db){
  while( db->pSavepoint ){
    Savepoint *pTmp = db->pSavepoint;
    db->pSavepoint = pTmp->pNext;
    sqlite3DbFree(db, pTmp);
  }
  db->nSavepoint = 0;
  db->nStatement = 0;
  db->isTransactionSavepoint = 0;
}
