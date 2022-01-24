#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_4__ {TYPE_1__* pCurrent; } ;
typedef  TYPE_2__ closure_cursor ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int SQLITE_OK ; 

__attribute__((used)) static int FUNC0(sqlite3_vtab_cursor *cur, sqlite_int64 *pRowid){
  closure_cursor *pCur = (closure_cursor*)cur;
  *pRowid = pCur->pCurrent->id;
  return SQLITE_OK;
}