#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_5__ {int /*<<< orphan*/  db; int /*<<< orphan*/  zTableName; int /*<<< orphan*/  zDbName; } ;
typedef  TYPE_1__ spellfix1_vtab ;
struct TYPE_6__ {int idxNum; int nRow; int iRow; int /*<<< orphan*/  pFullScan; TYPE_1__* pVTab; } ;
typedef  TYPE_2__ spellfix1_cursor ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
  spellfix1_cursor *pCur,
  int argc,
  sqlite3_value **argv
){
  int rc = SQLITE_OK;
  int idxNum = pCur->idxNum;
  char *zSql;
  spellfix1_vtab *pVTab = pCur->pVTab;
  FUNC1(pCur);
  FUNC0( idxNum==0 || idxNum==64 );
  zSql = FUNC4(
     "SELECT word, rank, NULL, langid, id FROM \"%w\".\"%w_vocab\"%s",
     pVTab->zDbName, pVTab->zTableName,
     ((idxNum & 64) ? " WHERE rowid=?" : "")
  );
  if( zSql==0 ) return SQLITE_NOMEM;
  rc = FUNC5(pVTab->db, zSql, -1, &pCur->pFullScan, 0);
  FUNC3(zSql);
  if( rc==SQLITE_OK && (idxNum & 64) ){
    FUNC0( argc==1 );
    rc = FUNC2(pCur->pFullScan, 1, argv[0]);
  }
  pCur->nRow = pCur->iRow = 0;
  if( rc==SQLITE_OK ){
    rc = FUNC6(pCur->pFullScan);
    if( rc==SQLITE_ROW ){ pCur->iRow = -1; rc = SQLITE_OK; }
    if( rc==SQLITE_DONE ){ rc = SQLITE_OK; }
  }else{
    pCur->iRow = 0;
  }
  return rc;
}