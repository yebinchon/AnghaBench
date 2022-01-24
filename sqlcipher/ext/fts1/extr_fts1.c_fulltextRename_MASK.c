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
struct TYPE_2__ {int /*<<< orphan*/  db; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC3(
  sqlite3_vtab *pVtab,
  const char *zName
){
  fulltext_vtab *p = (fulltext_vtab *)pVtab;
  int rc = SQLITE_NOMEM;
  char *zSql = FUNC2(
    "ALTER TABLE %Q.'%q_content'  RENAME TO '%q_content';"
    "ALTER TABLE %Q.'%q_term' RENAME TO '%q_term';"
    , p->zDb, p->zName, zName
    , p->zDb, p->zName, zName
  );
  if( zSql ){
    rc = FUNC0(p->db, zSql, 0, 0, 0);
    FUNC1(zSql);
  }
  return rc;
}