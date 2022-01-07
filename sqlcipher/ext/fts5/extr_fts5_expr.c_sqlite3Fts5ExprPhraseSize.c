
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nPhrase; TYPE_1__** apExprPhrase; } ;
struct TYPE_4__ {int nTerm; } ;
typedef TYPE_2__ Fts5Expr ;



int sqlite3Fts5ExprPhraseSize(Fts5Expr *pExpr, int iPhrase){
  if( iPhrase<0 || iPhrase>=pExpr->nPhrase ) return 0;
  return pExpr->apExprPhrase[iPhrase]->nTerm;
}
