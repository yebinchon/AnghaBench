#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_8__ {scalar_t__ eContent; scalar_t__ bColumnsize; } ;
struct TYPE_7__ {TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 scalar_t__ FTS5_CONTENT_NORMAL ; 
 int /*<<< orphan*/  FTS5_STMT_DELETE_CONTENT ; 
 int /*<<< orphan*/  FTS5_STMT_DELETE_DOCSIZE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(Fts5Storage *p, i64 iDel, sqlite3_value **apVal){
  Fts5Config *pConfig = p->pConfig;
  int rc;
  sqlite3_stmt *pDel = 0;

  FUNC0( pConfig->eContent!=FTS5_CONTENT_NORMAL || apVal==0 );
  rc = FUNC3(p, 1);

  /* Delete the index records */
  if( rc==SQLITE_OK ){
    rc = FUNC1(p, iDel, apVal);
  }

  /* Delete the %_docsize record */
  if( rc==SQLITE_OK && pConfig->bColumnsize ){
    rc = FUNC2(p, FTS5_STMT_DELETE_DOCSIZE, &pDel, 0);
    if( rc==SQLITE_OK ){
      FUNC4(pDel, 1, iDel);
      FUNC6(pDel);
      rc = FUNC5(pDel);
    }
  }

  /* Delete the %_content record */
  if( pConfig->eContent==FTS5_CONTENT_NORMAL ){
    if( rc==SQLITE_OK ){
      rc = FUNC2(p, FTS5_STMT_DELETE_CONTENT, &pDel, 0);
    }
    if( rc==SQLITE_OK ){
      FUNC4(pDel, 1, iDel);
      FUNC6(pDel);
      rc = FUNC5(pDel);
    }
  }

  return rc;
}