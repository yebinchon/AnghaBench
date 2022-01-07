
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zName; } ;
typedef int Parse ;
typedef int Expr ;
typedef TYPE_1__ CollSeq ;


 TYPE_1__* sqlite3ExprNNCollSeq (int *,int *) ;
 scalar_t__ sqlite3StrICmp (int ,int ) ;

int sqlite3ExprCollSeqMatch(Parse *pParse, Expr *pE1, Expr *pE2){
  CollSeq *pColl1 = sqlite3ExprNNCollSeq(pParse, pE1);
  CollSeq *pColl2 = sqlite3ExprNNCollSeq(pParse, pE2);
  return sqlite3StrICmp(pColl1->zName, pColl2->zName)==0;
}
