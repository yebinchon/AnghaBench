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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_2__ {int /*<<< orphan*/  pDb; } ;
typedef  TYPE_1__ lsm1_vtab ;

/* Variables and functions */
 int LSM_OK ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(sqlite3_vtab *pVtab){
  lsm1_vtab *p = (lsm1_vtab*)pVtab;
  int rc = FUNC0(p->pDb, 1);
  return rc==LSM_OK ? SQLITE_OK : SQLITE_ERROR;
}