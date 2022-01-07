
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int w ;
struct IdxCover {int iCur; int * pIdx; } ;
struct TYPE_5__ {struct IdxCover* pIdxCover; } ;
struct TYPE_6__ {int eCode; TYPE_1__ u; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
typedef int Index ;
typedef int Expr ;


 int exprIdxCover ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

int sqlite3ExprCoveredByIndex(
  Expr *pExpr,
  int iCur,
  Index *pIdx
){
  Walker w;
  struct IdxCover xcov;
  memset(&w, 0, sizeof(w));
  xcov.iCur = iCur;
  xcov.pIdx = pIdx;
  w.xExprCallback = exprIdxCover;
  w.u.pIdxCover = &xcov;
  sqlite3WalkExpr(&w, pExpr);
  return !w.eCode;
}
