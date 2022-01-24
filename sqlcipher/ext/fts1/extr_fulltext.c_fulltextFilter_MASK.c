#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_6__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_7__ {int iCursorType; int /*<<< orphan*/  pStmt; int /*<<< orphan*/  result; } ;
typedef  TYPE_2__ fulltext_cursor ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
#define  QUERY_FULLTEXT 129 
#define  QUERY_GENERIC 128 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(sqlite3_vtab_cursor *pCursor,
                          int idxNum, const char *idxStr,
                          int argc, sqlite3_value **argv){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  fulltext_vtab *v = FUNC1(c);
  int rc;
  const char *zStatement;

  c->iCursorType = idxNum;
  switch( idxNum ){
    case QUERY_GENERIC:
      zStatement = "select rowid, content from %_content";
      break;

    case QUERY_FULLTEXT:   /* full-text search */
    {
      const char *zQuery = (const char *)FUNC6(argv[0]);
      DocList *pResult;
      FUNC0( argc==1 );
      rc = FUNC3(v, zQuery, &pResult);
      if( rc!=SQLITE_OK ) return rc;
      FUNC4(&c->result, pResult);
      zStatement = "select rowid, content from %_content where rowid = ?";
      break;
    }

    default:
      FUNC0( 0 );
  }

  rc = FUNC5(v->db, v->zName, &c->pStmt, zStatement);
  if( rc!=SQLITE_OK ) return rc;

  return FUNC2(pCursor);
}