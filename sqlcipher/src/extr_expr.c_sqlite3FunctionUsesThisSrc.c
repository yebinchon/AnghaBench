
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct SrcCount {scalar_t__ nThis; scalar_t__ nOther; int * pSrc; } ;
struct TYPE_7__ {struct SrcCount* pSrcCount; } ;
struct TYPE_9__ {TYPE_1__ u; scalar_t__ xSelectCallback; int xExprCallback; } ;
typedef TYPE_3__ Walker ;
struct TYPE_8__ {int pList; } ;
struct TYPE_10__ {scalar_t__ op; TYPE_2__ x; } ;
typedef int SrcList ;
typedef TYPE_4__ Expr ;


 scalar_t__ TK_AGG_FUNCTION ;
 int assert (int) ;
 int exprSrcCount ;
 int sqlite3WalkExprList (TYPE_3__*,int ) ;

int sqlite3FunctionUsesThisSrc(Expr *pExpr, SrcList *pSrcList){
  Walker w;
  struct SrcCount cnt;
  assert( pExpr->op==TK_AGG_FUNCTION );
  w.xExprCallback = exprSrcCount;
  w.xSelectCallback = 0;
  w.u.pSrcCount = &cnt;
  cnt.pSrc = pSrcList;
  cnt.nThis = 0;
  cnt.nOther = 0;
  sqlite3WalkExprList(&w, pExpr->x.pList);
  return cnt.nThis>0 || cnt.nOther==0;
}
