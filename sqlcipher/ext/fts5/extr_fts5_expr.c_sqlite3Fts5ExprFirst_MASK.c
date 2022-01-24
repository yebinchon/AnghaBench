#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_10__ {int bDesc; int /*<<< orphan*/ * pIndex; TYPE_1__* pRoot; } ;
struct TYPE_9__ {scalar_t__ bEof; scalar_t__ bNomatch; int /*<<< orphan*/  iRowid; } ;
typedef  int /*<<< orphan*/  Fts5Index ;
typedef  TYPE_1__ Fts5ExprNode ;
typedef  TYPE_2__ Fts5Expr ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(Fts5Expr *p, Fts5Index *pIdx, i64 iFirst, int bDesc){
  Fts5ExprNode *pRoot = p->pRoot;
  int rc;                         /* Return code */

  p->pIndex = pIdx;
  p->bDesc = bDesc;
  rc = FUNC1(p, pRoot);

  /* If not at EOF but the current rowid occurs earlier than iFirst in
  ** the iteration order, move to document iFirst or later. */
  if( rc==SQLITE_OK 
   && 0==pRoot->bEof 
   && FUNC3(p, pRoot->iRowid, iFirst)<0 
  ){
    rc = FUNC2(p, pRoot, 1, iFirst);
  }

  /* If the iterator is not at a real match, skip forward until it is. */
  while( pRoot->bNomatch ){
    FUNC0( pRoot->bEof==0 && rc==SQLITE_OK );
    rc = FUNC2(p, pRoot, 0, 0);
  }
  return rc;
}