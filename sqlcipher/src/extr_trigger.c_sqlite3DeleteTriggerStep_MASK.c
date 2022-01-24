#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {struct TYPE_4__* zSpan; int /*<<< orphan*/  pUpsert; int /*<<< orphan*/  pIdList; int /*<<< orphan*/  pSelect; int /*<<< orphan*/  pExprList; int /*<<< orphan*/  pWhere; struct TYPE_4__* pNext; } ;
typedef  TYPE_1__ TriggerStep ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(sqlite3 *db, TriggerStep *pTriggerStep){
  while( pTriggerStep ){
    TriggerStep * pTmp = pTriggerStep;
    pTriggerStep = pTriggerStep->pNext;

    FUNC1(db, pTmp->pWhere);
    FUNC2(db, pTmp->pExprList);
    FUNC4(db, pTmp->pSelect);
    FUNC3(db, pTmp->pIdList);
    FUNC5(db, pTmp->pUpsert);
    FUNC0(db, pTmp->zSpan);

    FUNC0(db, pTmp);
  }
}