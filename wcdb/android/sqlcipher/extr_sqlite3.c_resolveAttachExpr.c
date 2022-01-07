
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ op; } ;
typedef int NameContext ;
typedef TYPE_1__ Expr ;


 int SQLITE_OK ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_STRING ;
 int sqlite3ResolveExprNames (int *,TYPE_1__*) ;

__attribute__((used)) static int resolveAttachExpr(NameContext *pName, Expr *pExpr)
{
  int rc = SQLITE_OK;
  if( pExpr ){
    if( pExpr->op!=TK_ID ){
      rc = sqlite3ResolveExprNames(pName, pExpr);
    }else{
      pExpr->op = TK_STRING;
    }
  }
  return rc;
}
