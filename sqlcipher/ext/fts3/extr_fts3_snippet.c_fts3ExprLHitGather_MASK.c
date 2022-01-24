#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ bEof; scalar_t__ iDocid; struct TYPE_10__* pRight; struct TYPE_10__* pLeft; } ;
struct TYPE_9__ {TYPE_1__* pCursor; } ;
struct TYPE_8__ {scalar_t__ iPrevId; } ;
typedef  TYPE_2__ MatchInfo ;
typedef  TYPE_3__ Fts3Expr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC2(
  Fts3Expr *pExpr,
  MatchInfo *p
){
  int rc = SQLITE_OK;
  FUNC0( (pExpr->pLeft==0)==(pExpr->pRight==0) );
  if( pExpr->bEof==0 && pExpr->iDocid==p->pCursor->iPrevId ){
    if( pExpr->pLeft ){
      rc = FUNC2(pExpr->pLeft, p);
      if( rc==SQLITE_OK ) rc = FUNC2(pExpr->pRight, p);
    }else{
      rc = FUNC1(pExpr, p);
    }
  }
  return rc;
}