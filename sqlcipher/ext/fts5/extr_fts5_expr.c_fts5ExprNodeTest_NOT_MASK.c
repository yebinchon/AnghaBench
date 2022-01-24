#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nChild; scalar_t__ bEof; int /*<<< orphan*/  iRowid; scalar_t__ bNomatch; struct TYPE_7__** apChild; } ;
typedef  TYPE_1__ Fts5ExprNode ;
typedef  int /*<<< orphan*/  Fts5Expr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(
  Fts5Expr *pExpr,                /* Expression pPhrase belongs to */
  Fts5ExprNode *pNode             /* FTS5_NOT node to advance */
){
  int rc = SQLITE_OK;
  Fts5ExprNode *p1 = pNode->apChild[0];
  Fts5ExprNode *p2 = pNode->apChild[1];
  FUNC0( pNode->nChild==2 );

  while( rc==SQLITE_OK && p1->bEof==0 ){
    int cmp = FUNC3(pExpr, p1, p2);
    if( cmp>0 ){
      rc = FUNC1(pExpr, p2, 1, p1->iRowid);
      cmp = FUNC3(pExpr, p1, p2);
    }
    FUNC0( rc!=SQLITE_OK || cmp<=0 );
    if( cmp || p2->bNomatch ) break;
    rc = FUNC1(pExpr, p1, 0, 0);
  }
  pNode->bEof = p1->bEof;
  pNode->bNomatch = p1->bNomatch;
  pNode->iRowid = p1->iRowid;
  if( p1->bEof ){
    FUNC2(p2);
  }
  return rc;
}