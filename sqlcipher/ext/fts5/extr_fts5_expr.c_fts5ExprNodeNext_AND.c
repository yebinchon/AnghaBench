
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_4__ {scalar_t__ bNomatch; int * apChild; } ;
typedef TYPE_1__ Fts5ExprNode ;
typedef int Fts5Expr ;


 int SQLITE_OK ;
 int fts5ExprNodeNext (int *,int ,int,int ) ;
 int fts5ExprNodeTest_AND (int *,TYPE_1__*) ;

__attribute__((used)) static int fts5ExprNodeNext_AND(
  Fts5Expr *pExpr,
  Fts5ExprNode *pNode,
  int bFromValid,
  i64 iFrom
){
  int rc = fts5ExprNodeNext(pExpr, pNode->apChild[0], bFromValid, iFrom);
  if( rc==SQLITE_OK ){
    rc = fts5ExprNodeTest_AND(pExpr, pNode);
  }else{
    pNode->bNomatch = 0;
  }
  return rc;
}
