#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ iCursorType; int eof; int /*<<< orphan*/  pStmt; int /*<<< orphan*/  result; int /*<<< orphan*/  snippet; } ;
typedef  TYPE_1__ fulltext_cursor ;

/* Variables and functions */
 scalar_t__ QUERY_FULLTEXT ; 
#define  SQLITE_DONE 129 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
#define  SQLITE_ROW 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sqlite3_vtab_cursor *pCursor){
  fulltext_cursor *c = (fulltext_cursor *) pCursor;
  sqlite_int64 iDocid;
  int rc;

  FUNC0(("FTS1 Next %p\n", pCursor));
  FUNC2(&c->snippet);
  if( c->iCursorType < QUERY_FULLTEXT ){
    /* TODO(shess) Handle SQLITE_SCHEMA AND SQLITE_BUSY. */
    rc = FUNC5(c->pStmt);
    switch( rc ){
      case SQLITE_ROW:
        c->eof = 0;
        return SQLITE_OK;
      case SQLITE_DONE:
        c->eof = 1;
        return SQLITE_OK;
      default:
        c->eof = 1;
        return rc;
    }
  } else {  /* full-text query */
    rc = FUNC4(c->pStmt);
    if( rc!=SQLITE_OK ) return rc;

    iDocid = FUNC1(&c->result);
    if( iDocid==0 ){
      c->eof = 1;
      return SQLITE_OK;
    }
    rc = FUNC3(c->pStmt, 1, iDocid);
    if( rc!=SQLITE_OK ) return rc;
    /* TODO(shess) Handle SQLITE_SCHEMA AND SQLITE_BUSY. */
    rc = FUNC5(c->pStmt);
    if( rc==SQLITE_ROW ){   /* the case we expect */
      c->eof = 0;
      return SQLITE_OK;
    }
    /* an error occurred; abort */
    return rc==SQLITE_DONE ? SQLITE_ERROR : rc;
  }
}