
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int i16 ;
typedef int Table ;
struct TYPE_5__ {int * pTab; } ;
struct TYPE_6__ {int iTable; int iColumn; TYPE_1__ y; } ;
typedef TYPE_2__ Expr ;


 int TK_COLUMN ;
 TYPE_2__* sqlite3Expr (int *,int ,int ) ;

__attribute__((used)) static Expr *exprTableColumn(
  sqlite3 *db,
  Table *pTab,
  int iCursor,
  i16 iCol
){
  Expr *pExpr = sqlite3Expr(db, TK_COLUMN, 0);
  if( pExpr ){
    pExpr->y.pTab = pTab;
    pExpr->iTable = iCursor;
    pExpr->iColumn = iCol;
  }
  return pExpr;
}
