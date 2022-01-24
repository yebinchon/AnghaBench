#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int /*<<< orphan*/  rcErr; } ;
typedef  TYPE_1__ ScrubState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sqlite3_stmt *FUNC4(
  ScrubState *p,      /* Backup context */
  sqlite3 *db,        /* Database to prepare against */
  const char *zSql    /* SQL statement */
){
  sqlite3_stmt *pStmt;
  if( p->rcErr ) return 0;
  p->rcErr = FUNC3(db, zSql, -1, &pStmt, 0);
  if( p->rcErr ){
    FUNC0(p, "SQL error \"%s\" on \"%s\"",
                   FUNC1(db), zSql);
    FUNC2(pStmt);
    return 0;
  }
  return pStmt;
}