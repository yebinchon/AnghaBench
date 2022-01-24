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
struct TYPE_4__ {struct TYPE_4__* zBase; struct TYPE_4__* zName; int /*<<< orphan*/  pStart; int /*<<< orphan*/  pEnd; int /*<<< orphan*/  pOrderBy; int /*<<< orphan*/  pPartition; int /*<<< orphan*/  pFilter; } ;
typedef  TYPE_1__ Window ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(sqlite3 *db, Window *p){
  if( p ){
    FUNC1(db, p->pFilter);
    FUNC2(db, p->pPartition);
    FUNC2(db, p->pOrderBy);
    FUNC1(db, p->pEnd);
    FUNC1(db, p->pStart);
    FUNC0(db, p->zName);
    FUNC0(db, p->zBase);
    FUNC0(db, p);
  }
}