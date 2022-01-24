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
struct TYPE_4__ {int /*<<< orphan*/  pColumns; int /*<<< orphan*/  pWhen; struct TYPE_4__* table; struct TYPE_4__* zName; int /*<<< orphan*/  step_list; } ;
typedef  TYPE_1__ Trigger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(sqlite3 *db, Trigger *pTrigger){
  if( pTrigger==0 ) return;
  FUNC1(db, pTrigger->step_list);
  FUNC0(db, pTrigger->zName);
  FUNC0(db, pTrigger->table);
  FUNC2(db, pTrigger->pWhen);
  FUNC3(db, pTrigger->pColumns);
  FUNC0(db, pTrigger);
}