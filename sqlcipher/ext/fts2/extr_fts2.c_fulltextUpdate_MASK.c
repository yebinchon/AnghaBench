#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_8__ {int nColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 scalar_t__ SQLITE_INTEGER ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,scalar_t__) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 
 int FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(sqlite3_vtab *pVtab, int nArg, sqlite3_value **ppArg,
                   sqlite_int64 *pRowid){
  fulltext_vtab *v = (fulltext_vtab *) pVtab;
  int rc;

  FUNC0(("FTS2 Update %p\n", pVtab));

  if( nArg<2 ){
    rc = FUNC4(v, FUNC8(ppArg[0]));
    if( rc==SQLITE_OK ){
      /* If we just deleted the last row in the table, clear out the
      ** index data.
      */
      rc = FUNC3(v);
      if( rc==SQLITE_ROW ){
        rc = SQLITE_OK;
      }else if( rc==SQLITE_DONE ){
        /* Clear the pending terms so we don't flush a useless level-0
        ** segment when the transaction closes.
        */
        rc = FUNC2(v);
        if( rc==SQLITE_OK ){
          rc = FUNC7(v);
        }
      }
    }
  } else if( FUNC9(ppArg[0]) != SQLITE_NULL ){
    /* An update:
     * ppArg[0] = old rowid
     * ppArg[1] = new rowid
     * ppArg[2..2+v->nColumn-1] = values
     * ppArg[2+v->nColumn] = value for magic column (we ignore this)
     */
    sqlite_int64 rowid = FUNC8(ppArg[0]);
    if( FUNC9(ppArg[1]) != SQLITE_INTEGER ||
      FUNC8(ppArg[1]) != rowid ){
      rc = SQLITE_ERROR;  /* we don't allow changing the rowid */
    } else {
      FUNC1( nArg==2+v->nColumn+1);
      rc = FUNC6(v, rowid, &ppArg[2]);
    }
  } else {
    /* An insert:
     * ppArg[1] = requested rowid
     * ppArg[2..2+v->nColumn-1] = values
     * ppArg[2+v->nColumn] = value for magic column (we ignore this)
     */
    FUNC1( nArg==2+v->nColumn+1);
    rc = FUNC5(v, ppArg[1], &ppArg[2], pRowid);
  }

  return rc;
}