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
struct TYPE_2__ {int /*<<< orphan*/  pDelete; } ;
typedef  TYPE_1__ SqlDb ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(TestDb *pTestDb, void *pKey, int nKey){
  SqlDb *pDb = (SqlDb *)pTestDb;
  FUNC0(pDb->pDelete, 1, pKey, nKey, SQLITE_STATIC);
  FUNC2(pDb->pDelete);
  return FUNC1(pDb->pDelete);
}