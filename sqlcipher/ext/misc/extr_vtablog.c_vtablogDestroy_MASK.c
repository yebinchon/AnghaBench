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
struct TYPE_2__ {int iInst; } ;
typedef  TYPE_1__ vtablog_vtab ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(sqlite3_vtab *pVtab){
  vtablog_vtab *pTab = (vtablog_vtab*)pVtab;
  FUNC0("vtablogDestroy(%d)\n", pTab->iInst);
  FUNC1(pVtab);
  return SQLITE_OK;
}