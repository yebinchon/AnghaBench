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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  Fts3Table ;

/* Variables and functions */
 int FTS_CORRUPT_VTAB ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
  Fts3Table *pTab,
  sqlite3_stmt **ppStmt,
  sqlite3_int64 *pnDoc,
  const char **paLen
){
  sqlite3_stmt *pStmt;
  const char *a;
  sqlite3_int64 nDoc;

  if( !*ppStmt ){
    int rc = FUNC2(pTab, ppStmt);
    if( rc!=SQLITE_OK ) return rc;
  }
  pStmt = *ppStmt;
  FUNC0( FUNC4(pStmt)==1 );

  a = FUNC3(pStmt, 0);
  a += FUNC1(a, &nDoc);
  if( nDoc==0 ) return FTS_CORRUPT_VTAB;
  *pnDoc = (u32)nDoc;

  if( paLen ) *paLen = a;
  return SQLITE_OK;
}