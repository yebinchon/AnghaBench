#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zErr; int /*<<< orphan*/  rc; TYPE_1__* pConfig; } ;
struct TYPE_5__ {scalar_t__ eDetail; } ;
typedef  TYPE_2__ Fts5Parse ;
typedef  int /*<<< orphan*/  Fts5ExprNode ;
typedef  int /*<<< orphan*/  Fts5Colset ;

/* Variables and functions */
 scalar_t__ FTS5_DETAIL_NONE ; 
 int /*<<< orphan*/  SQLITE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(
  Fts5Parse *pParse, 
  Fts5ExprNode *pExpr, 
  Fts5Colset *pColset 
){
  Fts5Colset *pFree = pColset;
  if( pParse->pConfig->eDetail==FTS5_DETAIL_NONE ){
    pParse->rc = SQLITE_ERROR;
    pParse->zErr = FUNC2(
      "fts5: column queries are not supported (detail=none)"
    );
  }else{
    FUNC0(pParse, pExpr, pColset, &pFree);
  }
  FUNC1(pFree);
}