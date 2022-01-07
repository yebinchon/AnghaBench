
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ bEof; int eType; } ;
typedef TYPE_1__ Fts5ExprNode ;
typedef int Fts5Expr ;



 int FTS5_NOT ;



 int SQLITE_OK ;
 int assert (int) ;
 int fts5ExprNodeTest_AND (int *,TYPE_1__*) ;
 int fts5ExprNodeTest_NOT (int *,TYPE_1__*) ;
 int fts5ExprNodeTest_OR (int *,TYPE_1__*) ;
 int fts5ExprNodeTest_STRING (int *,TYPE_1__*) ;
 int fts5ExprNodeTest_TERM (int *,TYPE_1__*) ;

__attribute__((used)) static int fts5ExprNodeTest(
  Fts5Expr *pExpr,
  Fts5ExprNode *pNode
){
  int rc = SQLITE_OK;
  if( pNode->bEof==0 ){
    switch( pNode->eType ){

      case 129: {
        rc = fts5ExprNodeTest_STRING(pExpr, pNode);
        break;
      }

      case 128: {
        rc = fts5ExprNodeTest_TERM(pExpr, pNode);
        break;
      }

      case 131: {
        rc = fts5ExprNodeTest_AND(pExpr, pNode);
        break;
      }

      case 130: {
        fts5ExprNodeTest_OR(pExpr, pNode);
        break;
      }

      default: assert( pNode->eType==FTS5_NOT ); {
        rc = fts5ExprNodeTest_NOT(pExpr, pNode);
        break;
      }
    }
  }
  return rc;
}
