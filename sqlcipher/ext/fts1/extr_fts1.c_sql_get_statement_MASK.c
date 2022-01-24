#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {int /*<<< orphan*/ ** pFulltextStatements; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  size_t fulltext_statement ;

/* Variables and functions */
#define  CONTENT_INSERT_STMT 129 
#define  CONTENT_UPDATE_STMT 128 
 size_t MAX_STMT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 char const** fulltext_zStatement ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(fulltext_vtab *v, fulltext_statement iStmt,
                             sqlite3_stmt **ppStmt){
  FUNC0( iStmt<MAX_STMT );
  if( v->pFulltextStatements[iStmt]==NULL ){
    const char *zStmt;
    int rc;
    switch( iStmt ){
      case CONTENT_INSERT_STMT:
        zStmt = FUNC1(v); break;
      case CONTENT_UPDATE_STMT:
        zStmt = FUNC2(v); break;
      default:
        zStmt = fulltext_zStatement[iStmt];
    }
    rc = FUNC4(v->db, v->zDb, v->zName, &v->pFulltextStatements[iStmt],
                         zStmt);
    if( zStmt != fulltext_zStatement[iStmt]) FUNC3((void *) zStmt);
    if( rc!=SQLITE_OK ) return rc;
  } else {
    int rc = FUNC5(v->pFulltextStatements[iStmt]);
    if( rc!=SQLITE_OK ) return rc;
  }

  *ppStmt = v->pFulltextStatements[iStmt];
  return SQLITE_OK;
}