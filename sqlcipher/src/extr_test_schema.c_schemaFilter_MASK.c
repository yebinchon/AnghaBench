#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ schema_vtab ;
struct TYPE_8__ {int /*<<< orphan*/  pDbList; int /*<<< orphan*/  pColumnList; int /*<<< orphan*/  pTableList; scalar_t__ rowid; } ;
typedef  TYPE_3__ schema_cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  int rc;
  schema_vtab *pVtab = (schema_vtab *)(pVtabCursor->pVtab);
  schema_cursor *pCur = (schema_cursor *)pVtabCursor;
  pCur->rowid = 0;
  FUNC0(&pCur->pTableList);
  FUNC0(&pCur->pColumnList);
  FUNC0(&pCur->pDbList);
  rc = FUNC2(pVtab->db,"PRAGMA database_list", -1, &pCur->pDbList, 0);
  return (rc==SQLITE_OK ? FUNC1(pVtabCursor) : rc);
}