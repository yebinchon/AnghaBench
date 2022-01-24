#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_5__ {int /*<<< orphan*/  base; int /*<<< orphan*/  pExpr; int /*<<< orphan*/  pMIBuffer; int /*<<< orphan*/  aDoclist; } ;
typedef  TYPE_1__ Fts3Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(Fts3Cursor *pCsr){
  FUNC0(pCsr);
  FUNC3(pCsr);
  FUNC5(pCsr->aDoclist);
  FUNC4(pCsr->pMIBuffer);
  FUNC2(pCsr->pExpr);
  FUNC1(&(&pCsr->base)[1], 0, sizeof(Fts3Cursor)-sizeof(sqlite3_vtab_cursor));
}