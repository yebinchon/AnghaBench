#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_4__ {int iRowid; scalar_t__ pStmt; int /*<<< orphan*/  zAfterKey; int /*<<< orphan*/  zIdxName; } ;
typedef  TYPE_1__ CidxCursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,char const*,char const*,char**) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int*,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
  sqlite3_vtab_cursor *pCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  int rc = SQLITE_OK;
  CidxCursor *pCsr = (CidxCursor*)pCursor;
  const char *zIdxName = 0;
  const char *zAfterKey = 0;

  FUNC5(pCsr->zIdxName);
  pCsr->zIdxName = 0;
  FUNC5(pCsr->zAfterKey);
  pCsr->zAfterKey = 0;
  FUNC4(pCsr->pStmt);
  pCsr->pStmt = 0;

  if( argc>0 ){
    zIdxName = (const char*)FUNC7(argv[0]);
    if( argc>1 ){
      zAfterKey = (const char*)FUNC7(argv[1]);
    }
  }

  if( zIdxName ){
    char *zSql = 0;
    pCsr->zIdxName = FUNC6("%s", zIdxName);
    pCsr->zAfterKey = zAfterKey ? FUNC6("%s", zAfterKey) : 0;
    rc = FUNC1(pCsr, zIdxName, zAfterKey, &zSql);
    if( zSql ){
      pCsr->pStmt = FUNC3(&rc, pCsr, "%z", zSql);
    }
  }

  if( pCsr->pStmt ){
    FUNC0( rc==SQLITE_OK );
    rc = FUNC2(pCursor);
  }
  pCsr->iRowid = 1;
  return rc;
}