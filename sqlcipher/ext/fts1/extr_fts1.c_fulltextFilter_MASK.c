#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_7__ {int nColumn; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_9__ {int /*<<< orphan*/ * pDoclist; } ;
struct TYPE_8__ {int iCursorType; TYPE_3__ result; int /*<<< orphan*/  q; int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_2__ fulltext_cursor ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int QUERY_FULLTEXT ; 
#define  QUERY_GENERIC 129 
#define  QUERY_ROWID 128 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(
  sqlite3_vtab_cursor *pCursor,     /* The cursor used for this query */
  int idxNum, const char *idxStr,   /* Which indexing scheme to use */
  int argc, sqlite3_value **argv    /* Arguments for the indexing scheme */
){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  fulltext_vtab *v = FUNC2(c);
  int rc;
  char *zSql;

  FUNC0(("FTS1 Filter %p\n",pCursor));

  zSql = FUNC12("select rowid, * from %%_content %s",
                          idxNum==QUERY_GENERIC ? "" : "where rowid=?");
  FUNC10(c->pStmt);
  rc = FUNC8(v->db, v->zDb, v->zName, &c->pStmt, zSql);
  FUNC11(zSql);
  if( rc!=SQLITE_OK ) return rc;

  c->iCursorType = idxNum;
  switch( idxNum ){
    case QUERY_GENERIC:
      break;

    case QUERY_ROWID:
      rc = FUNC9(c->pStmt, 1, FUNC13(argv[0]));
      if( rc!=SQLITE_OK ) return rc;
      break;

    default:   /* full-text search */
    {
      const char *zQuery = (const char *)FUNC14(argv[0]);
      DocList *pResult;
      FUNC1( idxNum<=QUERY_FULLTEXT+v->nColumn);
      FUNC1( argc==1 );
      FUNC6(&c->q);
      rc = FUNC5(v, idxNum-QUERY_FULLTEXT, zQuery, -1, &pResult, &c->q);
      if( rc!=SQLITE_OK ) return rc;
      if( c->result.pDoclist!=NULL ) FUNC3(c->result.pDoclist);
      FUNC7(&c->result, pResult);
      break;
    }
  }

  return FUNC4(pCursor);
}