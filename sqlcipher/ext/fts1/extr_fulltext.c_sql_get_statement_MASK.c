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
struct TYPE_3__ {int /*<<< orphan*/ ** pFulltextStatements; int /*<<< orphan*/  zName; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  size_t fulltext_statement ;

/* Variables and functions */
 size_t MAX_STMT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fulltext_zStatement ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(fulltext_vtab *v, fulltext_statement iStmt,
                             sqlite3_stmt **ppStmt){
  FUNC0( iStmt<MAX_STMT );
  if( v->pFulltextStatements[iStmt]==NULL ){
    int rc = FUNC1(v->db, v->zName, &v->pFulltextStatements[iStmt],
                         fulltext_zStatement[iStmt]);
    if( rc!=SQLITE_OK ) return rc;
  } else {
    int rc = FUNC2(v->pFulltextStatements[iStmt]);
    if( rc!=SQLITE_OK ) return rc;
  }

  *ppStmt = v->pFulltextStatements[iStmt];
  return SQLITE_OK;
}