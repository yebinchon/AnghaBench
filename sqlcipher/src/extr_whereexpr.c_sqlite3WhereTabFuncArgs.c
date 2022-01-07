
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {TYPE_8__* pFuncArg; } ;
struct TYPE_19__ {scalar_t__ isTabFunc; } ;
struct SrcList_item {int iCursor; TYPE_2__ u1; TYPE_6__* pTab; TYPE_1__ fg; } ;
typedef int WhereClause ;
struct TYPE_24__ {int nCol; int zName; TYPE_3__* aCol; } ;
typedef TYPE_6__ Table ;
struct TYPE_22__ {TYPE_6__* pTab; } ;
struct TYPE_27__ {TYPE_4__ y; int iColumn; int iTable; } ;
struct TYPE_26__ {int nExpr; TYPE_5__* a; } ;
struct TYPE_25__ {int db; } ;
struct TYPE_23__ {int pExpr; } ;
struct TYPE_21__ {int colFlags; } ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ ExprList ;
typedef TYPE_9__ Expr ;


 int COLFLAG_HIDDEN ;
 int TERM_DYNAMIC ;
 int TK_COLUMN ;
 int TK_EQ ;
 int TK_UPLUS ;
 int assert (int) ;
 int sqlite3ErrorMsg (TYPE_7__*,char*,int ,int) ;
 TYPE_9__* sqlite3ExprAlloc (int ,int ,int ,int ) ;
 TYPE_9__* sqlite3ExprDup (int ,int ,int ) ;
 TYPE_9__* sqlite3PExpr (TYPE_7__*,int ,TYPE_9__*,TYPE_9__*) ;
 int whereClauseInsert (int *,TYPE_9__*,int ) ;

void sqlite3WhereTabFuncArgs(
  Parse *pParse,
  struct SrcList_item *pItem,
  WhereClause *pWC
){
  Table *pTab;
  int j, k;
  ExprList *pArgs;
  Expr *pColRef;
  Expr *pTerm;
  if( pItem->fg.isTabFunc==0 ) return;
  pTab = pItem->pTab;
  assert( pTab!=0 );
  pArgs = pItem->u1.pFuncArg;
  if( pArgs==0 ) return;
  for(j=k=0; j<pArgs->nExpr; j++){
    Expr *pRhs;
    while( k<pTab->nCol && (pTab->aCol[k].colFlags & COLFLAG_HIDDEN)==0 ){k++;}
    if( k>=pTab->nCol ){
      sqlite3ErrorMsg(pParse, "too many arguments on %s() - max %d",
                      pTab->zName, j);
      return;
    }
    pColRef = sqlite3ExprAlloc(pParse->db, TK_COLUMN, 0, 0);
    if( pColRef==0 ) return;
    pColRef->iTable = pItem->iCursor;
    pColRef->iColumn = k++;
    pColRef->y.pTab = pTab;
    pRhs = sqlite3PExpr(pParse, TK_UPLUS,
        sqlite3ExprDup(pParse->db, pArgs->a[j].pExpr, 0), 0);
    pTerm = sqlite3PExpr(pParse, TK_EQ, pColRef, pRhs);
    whereClauseInsert(pWC, pTerm, TERM_DYNAMIC);
  }
}
