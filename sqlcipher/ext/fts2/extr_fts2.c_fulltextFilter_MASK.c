#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_9__ {int nColumn; int /*<<< orphan*/  zName; int /*<<< orphan*/  zDb; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ fulltext_vtab ;
struct TYPE_11__ {int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
struct TYPE_10__ {int iCursorType; TYPE_4__ result; int /*<<< orphan*/  reader; int /*<<< orphan*/  q; int /*<<< orphan*/ * pStmt; } ;
typedef  TYPE_2__ fulltext_cursor ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DOCIDS ; 
 int QUERY_FULLTEXT ; 
#define  QUERY_GENERIC 129 
#define  QUERY_ROWID 128 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 char* FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(
  sqlite3_vtab_cursor *pCursor,     /* The cursor used for this query */
  int idxNum, const char *idxStr,   /* Which indexing scheme to use */
  int argc, sqlite3_value **argv    /* Arguments for the indexing scheme */
){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  fulltext_vtab *v = FUNC2(c);
  int rc;

  FUNC0(("FTS2 Filter %p\n",pCursor));

  /* If the cursor has a statement that was not prepared according to
  ** idxNum, clear it.  I believe all calls to fulltextFilter with a
  ** given cursor will have the same idxNum , but in this case it's
  ** easy to be safe.
  */
  if( c->pStmt && c->iCursorType!=idxNum ){
    FUNC12(c->pStmt);
    c->pStmt = NULL;
  }

  /* Get a fresh statement appropriate to idxNum. */
  /* TODO(shess): Add a prepared-statement cache in the vt structure.
  ** The cache must handle multiple open cursors.  Easier to cache the
  ** statement variants at the vt to reduce malloc/realloc/free here.
  ** Or we could have a StringBuffer variant which allowed stack
  ** construction for small values.
  */
  if( !c->pStmt ){
    char *zSql = FUNC14("select rowid, * from %%_content %s",
                                 idxNum==QUERY_GENERIC ? "" : "where rowid=?");
    rc = FUNC10(v->db, v->zDb, v->zName, &c->pStmt, zSql);
    FUNC13(zSql);
    if( rc!=SQLITE_OK ) return rc;
    c->iCursorType = idxNum;
  }else{
    FUNC15(c->pStmt);
    FUNC1( c->iCursorType==idxNum );
  }

  switch( idxNum ){
    case QUERY_GENERIC:
      break;

    case QUERY_ROWID:
      rc = FUNC11(c->pStmt, 1, FUNC16(argv[0]));
      if( rc!=SQLITE_OK ) return rc;
      break;

    default:   /* full-text search */
    {
      const char *zQuery = (const char *)FUNC17(argv[0]);
      FUNC1( idxNum<=QUERY_FULLTEXT+v->nColumn);
      FUNC1( argc==1 );
      FUNC9(&c->q);
      if( c->result.nData!=0 ){
        /* This case happens if the same cursor is used repeatedly. */
        FUNC5(&c->reader);
        FUNC4(&c->result);
      }else{
        FUNC3(&c->result, 0);
      }
      rc = FUNC8(v, idxNum-QUERY_FULLTEXT, zQuery, -1, &c->result, &c->q);
      if( rc!=SQLITE_OK ) return rc;
      if( c->result.nData!=0 ){
        FUNC6(&c->reader, DL_DOCIDS, c->result.pData, c->result.nData);
      }
      break;
    }
  }

  return FUNC7(pCursor);
}