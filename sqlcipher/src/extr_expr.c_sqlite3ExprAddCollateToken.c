
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ n; } ;
typedef TYPE_1__ Token ;
struct TYPE_12__ {int flags; struct TYPE_12__* pLeft; } ;
struct TYPE_11__ {int db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ Expr ;


 int EP_Collate ;
 int EP_Skip ;
 int TK_COLLATE ;
 TYPE_3__* sqlite3ExprAlloc (int ,int ,TYPE_1__ const*,int) ;

Expr *sqlite3ExprAddCollateToken(
  Parse *pParse,
  Expr *pExpr,
  const Token *pCollName,
  int dequote
){
  if( pCollName->n>0 ){
    Expr *pNew = sqlite3ExprAlloc(pParse->db, TK_COLLATE, pCollName, dequote);
    if( pNew ){
      pNew->pLeft = pExpr;
      pNew->flags |= EP_Collate|EP_Skip;
      pExpr = pNew;
    }
  }
  return pExpr;
}
