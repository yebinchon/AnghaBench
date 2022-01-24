#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
struct TYPE_10__ {int /*<<< orphan*/  zErrMsg; } ;
typedef  TYPE_2__ sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_13__ {TYPE_1__* pConfig; } ;
struct TYPE_12__ {int /*<<< orphan*/ * aCnt; int /*<<< orphan*/ * aDoc; int /*<<< orphan*/ * pStmt; TYPE_5__* pFts5; } ;
struct TYPE_11__ {int /*<<< orphan*/  zFts5Tbl; int /*<<< orphan*/  zFts5Db; int /*<<< orphan*/  pGlobal; int /*<<< orphan*/  db; } ;
struct TYPE_9__ {int nCol; } ;
typedef  TYPE_3__ Fts5VocabTable ;
typedef  TYPE_4__ Fts5VocabCursor ;
typedef  TYPE_5__ Fts5Table ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 char* FUNC3 (int*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(
  sqlite3_vtab *pVTab, 
  sqlite3_vtab_cursor **ppCsr
){
  Fts5VocabTable *pTab = (Fts5VocabTable*)pVTab;
  Fts5Table *pFts5 = 0;
  Fts5VocabCursor *pCsr = 0;
  int rc = SQLITE_OK;
  sqlite3_stmt *pStmt = 0;
  char *zSql = 0;

  zSql = FUNC3(&rc,
      "SELECT t.%Q FROM %Q.%Q AS t WHERE t.%Q MATCH '*id'",
      pTab->zFts5Tbl, pTab->zFts5Db, pTab->zFts5Tbl, pTab->zFts5Tbl
  );
  if( zSql ){
    rc = FUNC9(pTab->db, zSql, -1, &pStmt, 0);
  }
  FUNC7(zSql);
  FUNC0( rc==SQLITE_OK || pStmt==0 );
  if( rc==SQLITE_ERROR ) rc = SQLITE_OK;

  if( pStmt && FUNC10(pStmt)==SQLITE_ROW ){
    i64 iId = FUNC5(pStmt, 0);
    pFts5 = FUNC4(pTab->pGlobal, iId);
  }

  if( rc==SQLITE_OK ){
    if( pFts5==0 ){
      rc = FUNC6(pStmt);
      pStmt = 0;
      if( rc==SQLITE_OK ){
        pVTab->zErrMsg = FUNC8(
            "no such fts5 table: %s.%s", pTab->zFts5Db, pTab->zFts5Tbl
            );
        rc = SQLITE_ERROR;
      }
    }else{
      rc = FUNC1(pFts5);
    }
  }

  if( rc==SQLITE_OK ){
    int nByte = pFts5->pConfig->nCol * sizeof(i64)*2 + sizeof(Fts5VocabCursor);
    pCsr = (Fts5VocabCursor*)FUNC2(&rc, nByte);
  }

  if( pCsr ){
    pCsr->pFts5 = pFts5;
    pCsr->pStmt = pStmt;
    pCsr->aCnt = (i64*)&pCsr[1];
    pCsr->aDoc = &pCsr->aCnt[pFts5->pConfig->nCol];
  }else{
    FUNC6(pStmt);
  }

  *ppCsr = (sqlite3_vtab_cursor*)pCsr;
  return rc;
}