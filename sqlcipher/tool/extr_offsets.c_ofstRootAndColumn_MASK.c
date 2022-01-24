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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int iCol; void* szPg; scalar_t__ zErr; void* iRoot; } ;
typedef  TYPE_1__ GState ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,...) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char const*,char const*,scalar_t__) ; 
 scalar_t__ FUNC12 (char const*) ; 

__attribute__((used)) static void FUNC13(
  GState *p,              /* Global state */
  const char *zFile,      /* Name of the database file */
  const char *zTable,     /* Name of the table */
  const char *zColumn     /* Name of the column */
){
  sqlite3 *db = 0;
  sqlite3_stmt *pStmt = 0;
  char *zSql = 0;
  int rc;
  if( p->zErr ) return;
  rc = FUNC8(zFile, &db);
  if( rc ){
    FUNC0(p, "cannot open database file \"%s\"", zFile);
    goto rootAndColumn_exit;
  }
  zSql = FUNC7("SELECT rootpage FROM sqlite_master WHERE name=%Q",
                         zTable);
  rc = FUNC9(db, zSql, -1, &pStmt, 0);
  if( rc ) FUNC0(p, "%s: [%s]", FUNC4(db), zSql);
  FUNC6(zSql);
  if( p->zErr ) goto rootAndColumn_exit;
  if( FUNC10(pStmt)!=SQLITE_ROW ){
    FUNC0(p, "cannot find table [%s]\n", zTable);
    FUNC5(pStmt);
    goto rootAndColumn_exit;
  }
  p->iRoot = FUNC2(pStmt , 0);
  FUNC5(pStmt);

  p->iCol = -1;
  zSql = FUNC7("PRAGMA table_info(%Q)", zTable);
  rc = FUNC9(db, zSql, -1, &pStmt, 0);
  if( rc ) FUNC0(p, "%s: [%s}", FUNC4(db), zSql);
  FUNC6(zSql);
  if( p->zErr ) goto rootAndColumn_exit;
  while( FUNC10(pStmt)==SQLITE_ROW ){
    const char *zCol = FUNC3(pStmt, 1);
    if( FUNC12(zCol)==FUNC12(zColumn)
     && FUNC11(zCol, zColumn, FUNC12(zCol))==0
    ){
      p->iCol = FUNC2(pStmt, 0);
      break;
    }
  }
  FUNC5(pStmt);
  if( p->iCol<0 ){
    FUNC0(p, "no such column: %s.%s", zTable, zColumn);
    goto rootAndColumn_exit;
  }

  zSql = FUNC7("PRAGMA page_size");
  rc = FUNC9(db, zSql, -1, &pStmt, 0);
  if( rc )  FUNC0(p, "%s: [%s]", FUNC4(db), zSql);
  FUNC6(zSql);
  if( p->zErr ) goto rootAndColumn_exit;
  if( FUNC10(pStmt)!=SQLITE_ROW ){
    FUNC0(p, "cannot find page size");
  }else{
    p->szPg = FUNC2(pStmt, 0);
  }
  FUNC5(pStmt);

rootAndColumn_exit:
  FUNC1(db);
  return;
}