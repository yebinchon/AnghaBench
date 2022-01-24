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
typedef  int /*<<< orphan*/  sqlite3_vtab ;
struct TYPE_3__ {int /*<<< orphan*/  db; int /*<<< orphan*/ * zTableName; int /*<<< orphan*/  zThis; scalar_t__ isPattern; } ;
typedef  TYPE_1__ echo_vtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sqlite3_vtab *vtab, const char *zNewName){
  int rc = SQLITE_OK;
  echo_vtab *p = (echo_vtab *)vtab;

  if( FUNC0(p, "xRename") ){
    return SQLITE_ERROR;
  }

  if( p->isPattern ){
    int nThis = (int)FUNC4(p->zThis);
    char *zSql = FUNC3("ALTER TABLE %s RENAME TO %s%s", 
        p->zTableName, zNewName, &p->zTableName[nThis]
    );
    rc = FUNC1(p->db, zSql, 0, 0, 0);
    FUNC2(zSql);
  }

  return rc;
}