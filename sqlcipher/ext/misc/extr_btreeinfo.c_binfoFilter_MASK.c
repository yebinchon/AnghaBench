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
struct TYPE_8__ {char* zSchema; int hasRowid; scalar_t__ pStmt; } ;
struct TYPE_7__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ BinfoTable ;
typedef  TYPE_3__ BinfoCursor ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
  sqlite3_vtab_cursor *pCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  BinfoCursor *pCsr = (BinfoCursor *)pCursor;
  BinfoTable *pTab = (BinfoTable *)pCursor->pVtab;
  char *zSql;
  int rc;

  FUNC2(pCsr->zSchema);
  if( idxNum==1 && FUNC6(argv[0])!=SQLITE_NULL ){
    pCsr->zSchema = FUNC3("%s", FUNC5(argv[0]));
  }else{
    pCsr->zSchema = FUNC3("main");
  }
  zSql = FUNC3(
      "SELECT 0, 'table','sqlite_master','sqlite_master',1,NULL "
      "UNION ALL "
      "SELECT rowid, type, name, tbl_name, rootpage, sql"
      " FROM \"%w\".sqlite_master WHERE rootpage>=1",
       pCsr->zSchema);
  FUNC1(pCsr->pStmt);
  pCsr->pStmt = 0;
  pCsr->hasRowid = -1;
  rc = FUNC4(pTab->db, zSql, -1, &pCsr->pStmt, 0);
  FUNC2(zSql);
  if( rc==SQLITE_OK ){
    rc = FUNC0(pCursor);
  }
  return rc;
}