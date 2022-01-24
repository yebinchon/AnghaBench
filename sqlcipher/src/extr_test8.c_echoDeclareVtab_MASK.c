#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_3__ {int /*<<< orphan*/  aIndex; int /*<<< orphan*/  nCol; scalar_t__ zTableName; int /*<<< orphan*/  aCol; } ;
typedef  TYPE_1__ echo_vtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
  echo_vtab *pVtab, 
  sqlite3 *db 
){
  int rc = SQLITE_OK;

  if( pVtab->zTableName ){
    sqlite3_stmt *pStmt = 0;
    rc = FUNC6(db, 
        "SELECT sql FROM sqlite_master WHERE type = 'table' AND name = ?",
        -1, &pStmt, 0);
    if( rc==SQLITE_OK ){
      FUNC2(pStmt, 1, pVtab->zTableName, -1, 0);
      if( FUNC7(pStmt)==SQLITE_ROW ){
        int rc2;
        const char *zCreateTable = (const char *)FUNC3(pStmt, 0);
        rc = FUNC4(db, zCreateTable);
        rc2 = FUNC5(pStmt);
        if( rc==SQLITE_OK ){
          rc = rc2;
        }
      } else {
        rc = FUNC5(pStmt);
        if( rc==SQLITE_OK ){ 
          rc = SQLITE_ERROR;
        }
      }
      if( rc==SQLITE_OK ){
        rc = FUNC0(db, pVtab->zTableName, &pVtab->aCol, &pVtab->nCol);
      }
      if( rc==SQLITE_OK ){
        rc = FUNC1(db, pVtab->zTableName, pVtab->nCol, &pVtab->aIndex);
      }
    }
  }

  return rc;
}