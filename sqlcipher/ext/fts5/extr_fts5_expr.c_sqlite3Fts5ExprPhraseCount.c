
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nPhrase; } ;
typedef TYPE_1__ Fts5Expr ;



int sqlite3Fts5ExprPhraseCount(Fts5Expr *pExpr){
  return (pExpr ? pExpr->nPhrase : 0);
}
