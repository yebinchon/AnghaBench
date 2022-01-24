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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_3__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(fulltext_vtab *v, const char *pTerm, int nTerm,
                               sqlite3_stmt **ppStmt){
  int rc;
  if( *ppStmt ){
    rc = FUNC2(*ppStmt);
  } else {
    rc = FUNC0(v->db, v->zName, ppStmt,
      "select doclist from %_term where term = ? order by first");
  }
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC1(*ppStmt, 1, pTerm, nTerm, SQLITE_TRANSIENT);
  if( rc!=SQLITE_OK ) return rc;

  return FUNC3(*ppStmt);   /* TODO(adamd): handle schema error */
}