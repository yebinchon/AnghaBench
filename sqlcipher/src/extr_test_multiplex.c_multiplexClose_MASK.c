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
typedef  int /*<<< orphan*/  sqlite3_file ;
typedef  int /*<<< orphan*/  multiplexGroup ;
struct TYPE_2__ {int /*<<< orphan*/ * pGroup; } ;
typedef  TYPE_1__ multiplexConn ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(sqlite3_file *pConn){
  multiplexConn *p = (multiplexConn*)pConn;
  multiplexGroup *pGroup = p->pGroup;
  int rc = SQLITE_OK;
  FUNC0(pGroup);
  FUNC1(pGroup);
  return rc;
}