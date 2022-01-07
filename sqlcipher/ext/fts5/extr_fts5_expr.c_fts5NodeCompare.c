
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iRowid; scalar_t__ bEof; } ;
typedef TYPE_1__ Fts5ExprNode ;
typedef int Fts5Expr ;


 int fts5RowidCmp (int *,int ,int ) ;

__attribute__((used)) static int fts5NodeCompare(
  Fts5Expr *pExpr,
  Fts5ExprNode *p1,
  Fts5ExprNode *p2
){
  if( p2->bEof ) return -1;
  if( p1->bEof ) return +1;
  return fts5RowidCmp(pExpr, p1->iRowid, p2->iRowid);
}
