
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Expr ;


 int TK_AND ;
 int TK_INTEGER ;
 scalar_t__ exprAlwaysFalse (int *) ;
 int * sqlite3ExprAlloc (int *,int ,int *,int ) ;
 int sqlite3ExprAttachSubtrees (int *,int *,int *,int *) ;
 int sqlite3ExprDelete (int *,int *) ;
 int * sqlite3IntTokens ;

Expr *sqlite3ExprAnd(sqlite3 *db, Expr *pLeft, Expr *pRight){
  if( pLeft==0 ){
    return pRight;
  }else if( pRight==0 ){
    return pLeft;
  }else if( exprAlwaysFalse(pLeft) || exprAlwaysFalse(pRight) ){
    sqlite3ExprDelete(db, pLeft);
    sqlite3ExprDelete(db, pRight);
    return sqlite3ExprAlloc(db, TK_INTEGER, &sqlite3IntTokens[0], 0);
  }else{
    Expr *pNew = sqlite3ExprAlloc(db, TK_AND, 0, 0);
    sqlite3ExprAttachSubtrees(db, pNew, pLeft, pRight);
    return pNew;
  }
}
