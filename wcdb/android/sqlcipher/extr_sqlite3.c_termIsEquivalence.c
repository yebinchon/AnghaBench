
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ op; int pRight; int pLeft; } ;
struct TYPE_8__ {int db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;
typedef int CollSeq ;


 int EP_FromJoin ;
 scalar_t__ ExprHasProperty (TYPE_2__*,int ) ;
 int OptimizationEnabled (int ,int ) ;
 int SQLITE_Transitive ;
 scalar_t__ TK_EQ ;
 scalar_t__ TK_IS ;
 int * sqlite3BinaryCompareCollSeq (TYPE_1__*,int ,int ) ;
 char sqlite3ExprAffinity (int ) ;
 int sqlite3ExprCollSeqMatch (TYPE_1__*,int ,int ) ;
 scalar_t__ sqlite3IsBinary (int *) ;
 int sqlite3IsNumericAffinity (char) ;

__attribute__((used)) static int termIsEquivalence(Parse *pParse, Expr *pExpr){
  char aff1, aff2;
  CollSeq *pColl;
  if( !OptimizationEnabled(pParse->db, SQLITE_Transitive) ) return 0;
  if( pExpr->op!=TK_EQ && pExpr->op!=TK_IS ) return 0;
  if( ExprHasProperty(pExpr, EP_FromJoin) ) return 0;
  aff1 = sqlite3ExprAffinity(pExpr->pLeft);
  aff2 = sqlite3ExprAffinity(pExpr->pRight);
  if( aff1!=aff2
   && (!sqlite3IsNumericAffinity(aff1) || !sqlite3IsNumericAffinity(aff2))
  ){
    return 0;
  }
  pColl = sqlite3BinaryCompareCollSeq(pParse, pExpr->pLeft, pExpr->pRight);
  if( sqlite3IsBinary(pColl) ) return 1;
  return sqlite3ExprCollSeqMatch(pParse, pExpr->pLeft, pExpr->pRight);
}
