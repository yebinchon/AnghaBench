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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_2__ {int rc; char* zSql; scalar_t__ pExplain; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ explain_cursor ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 scalar_t__ SQLITE_TEXT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  explain_cursor *pCur = (explain_cursor *)pVtabCursor;
  char *zSql = 0;
  int rc;
  FUNC0(pCur->pExplain);
  pCur->pExplain = 0;
  if( FUNC6(argv[0])!=SQLITE_TEXT ){
    pCur->rc = SQLITE_DONE;
    return SQLITE_OK;
  }
  FUNC1(pCur->zSql);
  pCur->zSql = FUNC2("%s", FUNC5(argv[0]));
  if( pCur->zSql ){
    zSql = FUNC2("EXPLAIN %s", pCur->zSql);
  }
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
  }else{
    rc = FUNC3(pCur->db, zSql, -1, &pCur->pExplain, 0);
    FUNC1(zSql);
  }
  if( rc ){
    FUNC0(pCur->pExplain);
    pCur->pExplain = 0;
    FUNC1(pCur->zSql);
    pCur->zSql = 0;
  }else{
    pCur->rc = FUNC4(pCur->pExplain);
    rc = (pCur->rc==SQLITE_DONE || pCur->rc==SQLITE_ROW) ? SQLITE_OK : pCur->rc;
  }
  return rc;
}