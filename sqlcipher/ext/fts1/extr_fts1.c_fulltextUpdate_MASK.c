#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_6__ {int nColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  int /*<<< orphan*/  fts1HashElem ;
typedef  int /*<<< orphan*/  fts1Hash ;
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  FTS1_HASH_STRING ; 
 int SQLITE_ERROR ; 
 scalar_t__ SQLITE_INTEGER ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(sqlite3_vtab *pVtab, int nArg, sqlite3_value **ppArg,
                   sqlite_int64 *pRowid){
  fulltext_vtab *v = (fulltext_vtab *) pVtab;
  fts1Hash terms;   /* maps term string -> PosList */
  int rc;
  fts1HashElem *e;

  FUNC0(("FTS1 Update %p\n", pVtab));
  
  FUNC6(&terms, FTS1_HASH_STRING, 1);

  if( nArg<2 ){
    rc = FUNC10(v, FUNC14(ppArg[0]), &terms);
  } else if( FUNC15(ppArg[0]) != SQLITE_NULL ){
    /* An update:
     * ppArg[0] = old rowid
     * ppArg[1] = new rowid
     * ppArg[2..2+v->nColumn-1] = values
     * ppArg[2+v->nColumn] = value for magic column (we ignore this)
     */
    sqlite_int64 rowid = FUNC14(ppArg[0]);
    if( FUNC15(ppArg[1]) != SQLITE_INTEGER ||
      FUNC14(ppArg[1]) != rowid ){
      rc = SQLITE_ERROR;  /* we don't allow changing the rowid */
    } else {
      FUNC1( nArg==2+v->nColumn+1);
      rc = FUNC13(v, rowid, &ppArg[2], &terms);
    }
  } else {
    /* An insert:
     * ppArg[1] = requested rowid
     * ppArg[2..2+v->nColumn-1] = values
     * ppArg[2+v->nColumn] = value for magic column (we ignore this)
     */
    FUNC1( nArg==2+v->nColumn+1);
    rc = FUNC11(v, ppArg[1], &ppArg[2], pRowid, &terms);
  }

  if( rc==SQLITE_OK ){
    /* Write updated doclists to disk. */
    for(e=FUNC5(&terms); e; e=FUNC9(e)){
      DocList *p = FUNC4(e);
      rc = FUNC12(v, FUNC7(e), FUNC8(e), p);
      if( rc!=SQLITE_OK ) break;
    }
  }

  /* clean up */
  for(e=FUNC5(&terms); e; e=FUNC9(e)){
    DocList *p = FUNC4(e);
    FUNC2(p);
  }
  FUNC3(&terms);

  return rc;
}