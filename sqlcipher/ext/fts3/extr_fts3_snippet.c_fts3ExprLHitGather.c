
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ bEof; scalar_t__ iDocid; struct TYPE_10__* pRight; struct TYPE_10__* pLeft; } ;
struct TYPE_9__ {TYPE_1__* pCursor; } ;
struct TYPE_8__ {scalar_t__ iPrevId; } ;
typedef TYPE_2__ MatchInfo ;
typedef TYPE_3__ Fts3Expr ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3ExprLHits (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int fts3ExprLHitGather(
  Fts3Expr *pExpr,
  MatchInfo *p
){
  int rc = SQLITE_OK;
  assert( (pExpr->pLeft==0)==(pExpr->pRight==0) );
  if( pExpr->bEof==0 && pExpr->iDocid==p->pCursor->iPrevId ){
    if( pExpr->pLeft ){
      rc = fts3ExprLHitGather(pExpr->pLeft, p);
      if( rc==SQLITE_OK ) rc = fts3ExprLHitGather(pExpr->pRight, p);
    }else{
      rc = fts3ExprLHits(pExpr, p);
    }
  }
  return rc;
}
