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
struct TYPE_4__ {int /*<<< orphan*/  pUpsertWhere; int /*<<< orphan*/  pUpsertSet; int /*<<< orphan*/  pUpsertTargetWhere; int /*<<< orphan*/  pUpsertTarget; } ;
typedef  TYPE_1__ Upsert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(sqlite3 *db, Upsert *p){
  if( p ){
    FUNC2(db, p->pUpsertTarget);
    FUNC1(db, p->pUpsertTargetWhere);
    FUNC2(db, p->pUpsertSet);
    FUNC1(db, p->pUpsertWhere);
    FUNC0(db, p);
  }
}