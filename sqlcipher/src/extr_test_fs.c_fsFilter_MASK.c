#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_7__ {int /*<<< orphan*/  db; int /*<<< orphan*/  zTbl; int /*<<< orphan*/  zDb; } ;
typedef  TYPE_2__ fs_vtab ;
struct TYPE_8__ {int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_3__ fs_cursor ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  int rc;
  fs_cursor *pCur = (fs_cursor *)pVtabCursor;
  fs_vtab *p = (fs_vtab *)(pVtabCursor->pVtab);

  FUNC0( (idxNum==0 && argc==0) || (idxNum==1 && argc==1) );
  if( idxNum==1 ){
    char *zStmt = FUNC4(
        "SELECT * FROM %Q.%Q WHERE rowid=?", p->zDb, p->zTbl);
    if( !zStmt ) return SQLITE_NOMEM;
    rc = FUNC5(p->db, zStmt, -1, &pCur->pStmt, 0);
    FUNC3(zStmt);
    if( rc==SQLITE_OK ){
      FUNC2(pCur->pStmt, 1, argv[0]);
    }
  }else{
    char *zStmt = FUNC4("SELECT * FROM %Q.%Q", p->zDb, p->zTbl);
    if( !zStmt ) return SQLITE_NOMEM;
    rc = FUNC5(p->db, zStmt, -1, &pCur->pStmt, 0);
    FUNC3(zStmt);
  }

  if( rc==SQLITE_OK ){
    rc = FUNC1(pVtabCursor); 
  }
  return rc;
}