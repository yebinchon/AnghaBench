#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(
  int *pRC,                /* Result code */
  Fts3Table *p,            /* The FTS3 table */
  int eStmt,               /* Index of statement to evaluate */
  sqlite3_value **apVal    /* Parameters to bind */
){
  sqlite3_stmt *pStmt;
  int rc;
  if( *pRC ) return;
  rc = FUNC0(p, eStmt, &pStmt, apVal); 
  if( rc==SQLITE_OK ){
    FUNC2(pStmt);
    rc = FUNC1(pStmt);
  }
  *pRC = rc;
}