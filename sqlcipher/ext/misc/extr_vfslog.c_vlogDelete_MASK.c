#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  scalar_t__ sqlite3_uint64 ;
typedef  int /*<<< orphan*/  VLogLog ;
struct TYPE_3__ {int (* xDelete ) (TYPE_1__*,char const*,int) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char*,int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int FUNC6(sqlite3_vfs *pVfs, const char *zPath, int dirSync){
  int rc;
  sqlite3_uint64 tStart, tElapse;
  VLogLog *pLog;
  tStart = FUNC5();
  rc = FUNC0(pVfs)->xDelete(FUNC0(pVfs), zPath, dirSync);
  tElapse = FUNC5() - tStart;
  pLog = FUNC3(zPath);
  FUNC4(pLog, tStart, tElapse, "DELETE", dirSync, -1, 0, rc);
  FUNC2(pLog);
  return rc;
}