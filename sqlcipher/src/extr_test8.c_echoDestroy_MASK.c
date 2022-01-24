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
struct TYPE_2__ {int /*<<< orphan*/  db; scalar_t__ zLogName; int /*<<< orphan*/  interp; } ;
typedef  TYPE_1__ echo_vtab ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(sqlite3_vtab *pVtab){
  int rc = SQLITE_OK;
  echo_vtab *p = (echo_vtab *)pVtab;
  FUNC0(((echo_vtab *)pVtab)->interp, "xDestroy");

  /* Drop the "log" table, if one exists (see echoCreate() for details) */
  if( p && p->zLogName ){
    char *zSql;
    zSql = FUNC4("DROP TABLE %Q", p->zLogName);
    rc = FUNC2(p->db, zSql, 0, 0, 0);
    FUNC3(zSql);
  }

  if( rc==SQLITE_OK ){
    rc = FUNC1(pVtab);
  }
  return rc;
}