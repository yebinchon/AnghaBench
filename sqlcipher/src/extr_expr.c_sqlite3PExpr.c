
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int op; int iAgg; int nHeight; } ;
struct TYPE_16__ {scalar_t__ nErr; int db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;


 int IN_RENAME_OBJECT ;
 int TK_AND ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* sqlite3DbMallocRawNN (int ,int) ;
 TYPE_2__* sqlite3ExprAnd (int ,TYPE_2__*,TYPE_2__*) ;
 int sqlite3ExprAttachSubtrees (int ,TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int sqlite3ExprCheckHeight (TYPE_1__*,int ) ;

Expr *sqlite3PExpr(
  Parse *pParse,
  int op,
  Expr *pLeft,
  Expr *pRight
){
  Expr *p;
  if( op==TK_AND && pParse->nErr==0 && !IN_RENAME_OBJECT ){

    p = sqlite3ExprAnd(pParse->db, pLeft, pRight);
  }else{
    p = sqlite3DbMallocRawNN(pParse->db, sizeof(Expr));
    if( p ){
      memset(p, 0, sizeof(Expr));
      p->op = op & 0xff;
      p->iAgg = -1;
    }
    sqlite3ExprAttachSubtrees(pParse->db, p, pLeft, pRight);
  }
  if( p ) {
    sqlite3ExprCheckHeight(pParse, p->nHeight);
  }
  return p;
}
