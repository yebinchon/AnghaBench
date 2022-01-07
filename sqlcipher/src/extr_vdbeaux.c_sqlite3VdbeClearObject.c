
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_7__ {int nResColumn; scalar_t__ magic; int nVar; int nScan; TYPE_2__* aScan; TYPE_2__* pDblStr; TYPE_2__* zNormSql; TYPE_2__* zSql; TYPE_2__* aColName; int nOp; int aOp; TYPE_2__* pFree; TYPE_2__* pVList; TYPE_2__* aVar; TYPE_2__* pProgram; int * db; } ;
typedef TYPE_1__ Vdbe ;
struct TYPE_8__ {struct TYPE_8__* zName; struct TYPE_8__* pNextStr; int nOp; int aOp; struct TYPE_8__* pNext; } ;
typedef TYPE_2__ SubProgram ;
typedef TYPE_2__ DblquoteStr ;


 int COLNAME_N ;
 scalar_t__ VDBE_MAGIC_INIT ;
 int assert (int) ;
 int releaseMemArray (TYPE_2__*,int) ;
 int sqlite3DbFree (int *,TYPE_2__*) ;
 int vdbeFreeOpArray (int *,int ,int ) ;

void sqlite3VdbeClearObject(sqlite3 *db, Vdbe *p){
  SubProgram *pSub, *pNext;
  assert( p->db==0 || p->db==db );
  releaseMemArray(p->aColName, p->nResColumn*COLNAME_N);
  for(pSub=p->pProgram; pSub; pSub=pNext){
    pNext = pSub->pNext;
    vdbeFreeOpArray(db, pSub->aOp, pSub->nOp);
    sqlite3DbFree(db, pSub);
  }
  if( p->magic!=VDBE_MAGIC_INIT ){
    releaseMemArray(p->aVar, p->nVar);
    sqlite3DbFree(db, p->pVList);
    sqlite3DbFree(db, p->pFree);
  }
  vdbeFreeOpArray(db, p->aOp, p->nOp);
  sqlite3DbFree(db, p->aColName);
  sqlite3DbFree(db, p->zSql);
}
