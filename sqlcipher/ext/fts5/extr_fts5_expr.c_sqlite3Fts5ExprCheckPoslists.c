
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_3__ {int pRoot; } ;
typedef TYPE_1__ Fts5Expr ;


 int fts5ExprCheckPoslists (int ,int ) ;

void sqlite3Fts5ExprCheckPoslists(Fts5Expr *pExpr, i64 iRowid){
  fts5ExprCheckPoslists(pExpr->pRoot, iRowid);
}
