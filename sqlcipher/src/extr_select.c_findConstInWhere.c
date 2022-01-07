
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int pParse; } ;
typedef TYPE_1__ WhereConst ;
struct TYPE_13__ {scalar_t__ op; struct TYPE_13__* pLeft; struct TYPE_13__* pRight; } ;
typedef TYPE_2__ Expr ;


 int EP_FixedCol ;
 int EP_FromJoin ;
 scalar_t__ ExprHasProperty (TYPE_2__*,int ) ;
 scalar_t__ TK_AND ;
 scalar_t__ TK_COLUMN ;
 scalar_t__ TK_EQ ;
 int assert (int) ;
 int constInsert (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int sqlite3BinaryCompareCollSeq (int ,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ sqlite3ExprIsConstant (TYPE_2__*) ;
 scalar_t__ sqlite3IsBinary (int ) ;

__attribute__((used)) static void findConstInWhere(WhereConst *pConst, Expr *pExpr){
  Expr *pRight, *pLeft;
  if( pExpr==0 ) return;
  if( ExprHasProperty(pExpr, EP_FromJoin) ) return;
  if( pExpr->op==TK_AND ){
    findConstInWhere(pConst, pExpr->pRight);
    findConstInWhere(pConst, pExpr->pLeft);
    return;
  }
  if( pExpr->op!=TK_EQ ) return;
  pRight = pExpr->pRight;
  pLeft = pExpr->pLeft;
  assert( pRight!=0 );
  assert( pLeft!=0 );
  if( pRight->op==TK_COLUMN
   && !ExprHasProperty(pRight, EP_FixedCol)
   && sqlite3ExprIsConstant(pLeft)
   && sqlite3IsBinary(sqlite3BinaryCompareCollSeq(pConst->pParse,pLeft,pRight))
  ){
    constInsert(pConst, pRight, pLeft);
  }else
  if( pLeft->op==TK_COLUMN
   && !ExprHasProperty(pLeft, EP_FixedCol)
   && sqlite3ExprIsConstant(pRight)
   && sqlite3IsBinary(sqlite3BinaryCompareCollSeq(pConst->pParse,pLeft,pRight))
  ){
    constInsert(pConst, pLeft, pRight);
  }
}
