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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_7__ {scalar_t__ eContent; int nCol; int /*<<< orphan*/  db; } ;
struct TYPE_6__ {TYPE_2__* pConfig; } ;
typedef  TYPE_1__ Fts5Storage ;
typedef  TYPE_2__ Fts5Config ;

/* Variables and functions */
 scalar_t__ FTS5_CONTENT_NORMAL ; 
 int /*<<< orphan*/  FTS5_STMT_INSERT_CONTENT ; 
 scalar_t__ SQLITE_INTEGER ; 
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(
  Fts5Storage *p, 
  sqlite3_value **apVal, 
  i64 *piRowid
){
  Fts5Config *pConfig = p->pConfig;
  int rc = SQLITE_OK;

  /* Insert the new row into the %_content table. */
  if( pConfig->eContent!=FTS5_CONTENT_NORMAL ){
    if( FUNC7(apVal[1])==SQLITE_INTEGER ){
      *piRowid = FUNC6(apVal[1]);
    }else{
      rc = FUNC1(p, piRowid);
    }
  }else{
    sqlite3_stmt *pInsert = 0;    /* Statement to write %_content table */
    int i;                        /* Counter variable */
    rc = FUNC0(p, FTS5_STMT_INSERT_CONTENT, &pInsert, 0);
    for(i=1; rc==SQLITE_OK && i<=pConfig->nCol+1; i++){
      rc = FUNC2(pInsert, i, apVal[i]);
    }
    if( rc==SQLITE_OK ){
      FUNC5(pInsert);
      rc = FUNC4(pInsert);
    }
    *piRowid = FUNC3(pConfig->db);
  }

  return rc;
}