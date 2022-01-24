#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TestDb ;
struct TYPE_2__ {scalar_t__ aAlloc; int /*<<< orphan*/  db; int /*<<< orphan*/ * apScan; int /*<<< orphan*/  pFetch; int /*<<< orphan*/  pDeleteRange; int /*<<< orphan*/  pDelete; int /*<<< orphan*/  pInsert; } ;
typedef  TYPE_1__ SqlDb ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(TestDb *pTestDb){
  SqlDb *pDb = (SqlDb *)pTestDb;
  FUNC2(pDb->pInsert);
  FUNC2(pDb->pDelete);
  FUNC2(pDb->pDeleteRange);
  FUNC2(pDb->pFetch);
  FUNC2(pDb->apScan[0]);
  FUNC2(pDb->apScan[1]);
  FUNC2(pDb->apScan[2]);
  FUNC2(pDb->apScan[3]);
  FUNC2(pDb->apScan[4]);
  FUNC2(pDb->apScan[5]);
  FUNC2(pDb->apScan[6]);
  FUNC2(pDb->apScan[7]);
  FUNC1(pDb->db);
  FUNC0((char *)pDb->aAlloc);
  FUNC0((char *)pDb);
  return SQLITE_OK;
}