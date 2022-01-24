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
struct TYPE_7__ {int /*<<< orphan*/  pExpr; scalar_t__ pDeferred; } ;
typedef  TYPE_1__ Fts3Cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(Fts3Cursor *pCsr, int *pRc){
  int rc = *pRc;
  int bMiss = 0;
  if( rc==SQLITE_OK ){

    /* If there are one or more deferred tokens, load the current row into
    ** memory and scan it to determine the position list for each deferred
    ** token. Then, see if this row is really a match, considering deferred
    ** tokens and NEAR operators (neither of which were taken into account
    ** earlier, by fts3EvalNextRow()). 
    */
    if( pCsr->pDeferred ){
      rc = FUNC0(0, pCsr);
      if( rc==SQLITE_OK ){
        rc = FUNC2(pCsr);
      }
    }
    bMiss = (0==FUNC1(pCsr, pCsr->pExpr, &rc));

    /* Free the position-lists accumulated for each deferred token above. */
    FUNC3(pCsr);
    *pRc = rc;
  }
  return (rc==SQLITE_OK && bMiss);
}