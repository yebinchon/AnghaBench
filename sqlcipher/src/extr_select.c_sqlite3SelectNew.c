
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_14__ {int mallocFailed; } ;
struct TYPE_13__ {scalar_t__ nErr; TYPE_6__* db; scalar_t__ nSelect; } ;
struct TYPE_12__ {int* addrOpenEphm; int * pSrc; scalar_t__ pWinDefn; scalar_t__ pWin; scalar_t__ pWith; int * pLimit; scalar_t__ pNext; scalar_t__ pPrior; int * pOrderBy; int * pHaving; int * pGroupBy; int * pWhere; scalar_t__ nSelectRow; scalar_t__ selId; scalar_t__ iOffset; scalar_t__ iLimit; int selFlags; int op; int * pEList; } ;
typedef int SrcList ;
typedef TYPE_1__ Select ;
typedef TYPE_2__ Parse ;
typedef int ExprList ;
typedef int Expr ;


 int TK_ASTERISK ;
 int TK_SELECT ;
 int assert (int) ;
 int clearSelect (TYPE_6__*,TYPE_1__*,int) ;
 TYPE_1__* sqlite3DbMallocRawNN (TYPE_6__*,int) ;
 int * sqlite3DbMallocZero (TYPE_6__*,int) ;
 int sqlite3Expr (TYPE_6__*,int ,int ) ;
 int * sqlite3ExprListAppend (TYPE_2__*,int ,int ) ;

Select *sqlite3SelectNew(
  Parse *pParse,
  ExprList *pEList,
  SrcList *pSrc,
  Expr *pWhere,
  ExprList *pGroupBy,
  Expr *pHaving,
  ExprList *pOrderBy,
  u32 selFlags,
  Expr *pLimit
){
  Select *pNew;
  Select standin;
  pNew = sqlite3DbMallocRawNN(pParse->db, sizeof(*pNew) );
  if( pNew==0 ){
    assert( pParse->db->mallocFailed );
    pNew = &standin;
  }
  if( pEList==0 ){
    pEList = sqlite3ExprListAppend(pParse, 0,
                                   sqlite3Expr(pParse->db,TK_ASTERISK,0));
  }
  pNew->pEList = pEList;
  pNew->op = TK_SELECT;
  pNew->selFlags = selFlags;
  pNew->iLimit = 0;
  pNew->iOffset = 0;
  pNew->selId = ++pParse->nSelect;
  pNew->addrOpenEphm[0] = -1;
  pNew->addrOpenEphm[1] = -1;
  pNew->nSelectRow = 0;
  if( pSrc==0 ) pSrc = sqlite3DbMallocZero(pParse->db, sizeof(*pSrc));
  pNew->pSrc = pSrc;
  pNew->pWhere = pWhere;
  pNew->pGroupBy = pGroupBy;
  pNew->pHaving = pHaving;
  pNew->pOrderBy = pOrderBy;
  pNew->pPrior = 0;
  pNew->pNext = 0;
  pNew->pLimit = pLimit;
  pNew->pWith = 0;

  pNew->pWin = 0;
  pNew->pWinDefn = 0;

  if( pParse->db->mallocFailed ) {
    clearSelect(pParse->db, pNew, pNew!=&standin);
    pNew = 0;
  }else{
    assert( pNew->pSrc!=0 || pParse->nErr>0 );
  }
  assert( pNew!=&standin );
  return pNew;
}
