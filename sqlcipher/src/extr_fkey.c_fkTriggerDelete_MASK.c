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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {int /*<<< orphan*/  pSelect; int /*<<< orphan*/  pExprList; int /*<<< orphan*/  pWhere; } ;
typedef  TYPE_1__ TriggerStep ;
struct TYPE_6__ {int /*<<< orphan*/  pWhen; TYPE_1__* step_list; } ;
typedef  TYPE_2__ Trigger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(sqlite3 *dbMem, Trigger *p){
  if( p ){
    TriggerStep *pStep = p->step_list;
    FUNC1(dbMem, pStep->pWhere);
    FUNC2(dbMem, pStep->pExprList);
    FUNC3(dbMem, pStep->pSelect);
    FUNC1(dbMem, p->pWhen);
    FUNC0(dbMem, p);
  }
}