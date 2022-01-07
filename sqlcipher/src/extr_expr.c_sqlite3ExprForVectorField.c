
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {TYPE_2__* pList; } ;
struct TYPE_20__ {scalar_t__ op; int flags; int iColumn; scalar_t__ iTable; TYPE_3__ x; struct TYPE_20__* pLeft; } ;
struct TYPE_19__ {int db; } ;
struct TYPE_17__ {TYPE_1__* a; } ;
struct TYPE_16__ {TYPE_5__* pExpr; } ;
typedef TYPE_4__ Parse ;
typedef TYPE_5__ Expr ;


 int EP_xIsSelect ;
 scalar_t__ TK_SELECT ;
 int TK_SELECT_COLUMN ;
 scalar_t__ TK_VECTOR ;
 int assert (int) ;
 TYPE_5__* sqlite3ExprDup (int ,TYPE_5__*,int ) ;
 TYPE_5__* sqlite3PExpr (TYPE_4__*,int ,int ,int ) ;
 int sqlite3RenameTokenRemap (TYPE_4__*,TYPE_5__*,TYPE_5__*) ;

Expr *sqlite3ExprForVectorField(
  Parse *pParse,
  Expr *pVector,
  int iField
){
  Expr *pRet;
  if( pVector->op==TK_SELECT ){
    assert( pVector->flags & EP_xIsSelect );
    pRet = sqlite3PExpr(pParse, TK_SELECT_COLUMN, 0, 0);
    if( pRet ){
      pRet->iColumn = iField;
      pRet->pLeft = pVector;
    }
    assert( pRet==0 || pRet->iTable==0 );
  }else{
    if( pVector->op==TK_VECTOR ) pVector = pVector->x.pList->a[iField].pExpr;
    pRet = sqlite3ExprDup(pParse->db, pVector, 0);
    sqlite3RenameTokenRemap(pParse, pRet, pVector);
  }
  return pRet;
}
