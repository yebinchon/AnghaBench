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
struct TYPE_4__ {int /*<<< orphan*/  zSpan; int /*<<< orphan*/  orconf; int /*<<< orphan*/ * pSelect; int /*<<< orphan*/  op; } ;
typedef  TYPE_1__ TriggerStep ;
typedef  int /*<<< orphan*/  Select ;

/* Variables and functions */
 int /*<<< orphan*/  OE_Default ; 
 int /*<<< orphan*/  TK_SELECT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 

TriggerStep *FUNC3(
  sqlite3 *db,                /* Database connection */
  Select *pSelect,            /* The SELECT statement */
  const char *zStart,         /* Start of SQL text */
  const char *zEnd            /* End of SQL text */
){
  TriggerStep *pTriggerStep = FUNC0(db, sizeof(TriggerStep));
  if( pTriggerStep==0 ) {
    FUNC1(db, pSelect);
    return 0;
  }
  pTriggerStep->op = TK_SELECT;
  pTriggerStep->pSelect = pSelect;
  pTriggerStep->orconf = OE_Default;
  pTriggerStep->zSpan = FUNC2(db, zStart, zEnd);
  return pTriggerStep;
}