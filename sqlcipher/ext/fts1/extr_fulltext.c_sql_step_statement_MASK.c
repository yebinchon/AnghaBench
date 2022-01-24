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
struct TYPE_4__ {int /*<<< orphan*/ ** pFulltextStatements; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  size_t fulltext_statement ;

/* Variables and functions */
 size_t MAX_STMT ; 
 int SQLITE_BUSY ; 
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int SQLITE_SCHEMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,size_t,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(fulltext_vtab *v, fulltext_statement iStmt,
                              sqlite3_stmt **ppStmt){
  int rc;
  sqlite3_stmt *s = *ppStmt;
  FUNC0( iStmt<MAX_STMT );
  FUNC0( s==v->pFulltextStatements[iStmt] );

  while( (rc=FUNC4(s))!=SQLITE_DONE && rc!=SQLITE_ROW ){
    sqlite3_stmt *pNewStmt;

    if( rc==SQLITE_BUSY ) continue;
    if( rc!=SQLITE_ERROR ) return rc;

    rc = FUNC3(s);
    if( rc!=SQLITE_SCHEMA ) return SQLITE_ERROR;

    v->pFulltextStatements[iStmt] = NULL;   /* Still in s */
    rc = FUNC1(v, iStmt, &pNewStmt);
    if( rc!=SQLITE_OK ) goto err;
    *ppStmt = pNewStmt;

    rc = FUNC5(s, pNewStmt);
    if( rc!=SQLITE_OK ) goto err;

    rc = FUNC2(s);
    if( rc!=SQLITE_OK ) return rc;
    s = pNewStmt;
  }
  return rc;

 err:
  FUNC2(s);
  return rc;
}