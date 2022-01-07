
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iPhrase; } ;
typedef TYPE_1__ Fts3Expr ;


 int SQLITE_OK ;

__attribute__((used)) static int fts3ExprPhraseCountCb(Fts3Expr *pExpr, int iPhrase, void *ctx){
  (*(int *)ctx)++;
  pExpr->iPhrase = iPhrase;
  return SQLITE_OK;
}
