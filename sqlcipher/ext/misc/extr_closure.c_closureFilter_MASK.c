#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sQueue ;
struct TYPE_8__ {char* zErrMsg; } ;
struct TYPE_9__ {char* zTableName; char* zIdColumn; char* zParentColumn; int /*<<< orphan*/  db; TYPE_1__ base; } ;
typedef  TYPE_2__ closure_vtab ;
typedef  int /*<<< orphan*/  closure_queue ;
struct TYPE_10__ {int /*<<< orphan*/  pClosure; int /*<<< orphan*/  pCurrent; void* zParentColumn; void* zIdColumn; void* zTableName; TYPE_2__* pVtab; } ;
typedef  TYPE_3__ closure_cursor ;
struct TYPE_11__ {int iGeneration; int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ closure_avl ;

/* Variables and functions */
 scalar_t__ SQLITE_INTEGER ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 void* FUNC12 (char*,char const*,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  closure_cursor *pCur = (closure_cursor *)pVtabCursor;
  closure_vtab *pVtab = pCur->pVtab;
  sqlite3_int64 iRoot;
  int mxGen = 999999999;
  char *zSql;
  sqlite3_stmt *pStmt;
  closure_avl *pAvl;
  int rc = SQLITE_OK;
  const char *zTableName = pVtab->zTableName;
  const char *zIdColumn = pVtab->zIdColumn;
  const char *zParentColumn = pVtab->zParentColumn;
  closure_queue sQueue;

  (void)idxStr;  /* Unused parameter */
  (void)argc;    /* Unused parameter */
  FUNC2(pCur);
  FUNC4(&sQueue, 0, sizeof(sQueue));
  if( (idxNum & 1)==0 ){
    /* No root=$root in the WHERE clause.  Return an empty set */
    return SQLITE_OK;
  }
  iRoot = FUNC17(argv[0]);
  if( (idxNum & 0x000f0)!=0 ){
    mxGen = FUNC16(argv[(idxNum>>4)&0x0f]);
    if( (idxNum & 0x00002)!=0 ) mxGen--;
  }
  if( (idxNum & 0x00f00)!=0 ){
    zTableName = (const char*)FUNC18(argv[(idxNum>>8)&0x0f]);
    pCur->zTableName = FUNC12("%s", zTableName);
  }
  if( (idxNum & 0x0f000)!=0 ){
    zIdColumn = (const char*)FUNC18(argv[(idxNum>>12)&0x0f]);
    pCur->zIdColumn = FUNC12("%s", zIdColumn);
  }
  if( (idxNum & 0x0f0000)!=0 ){
    zParentColumn = (const char*)FUNC18(argv[(idxNum>>16)&0x0f]);
    pCur->zParentColumn = FUNC12("%s", zParentColumn);
  }

  zSql = FUNC12(
       "SELECT \"%w\".\"%w\" FROM \"%w\" WHERE \"%w\".\"%w\"=?1",
       zTableName, zIdColumn, zTableName, zTableName, zParentColumn);
  if( zSql==0 ){
    return SQLITE_NOMEM;
  }else{
    rc = FUNC13(pVtab->db, zSql, -1, &pStmt, 0);
    FUNC11(zSql);
    if( rc ){
      FUNC11(pVtab->base.zErrMsg);
      pVtab->base.zErrMsg = FUNC12("%s", FUNC9(pVtab->db));
      return rc;
    }
  }
  if( rc==SQLITE_OK ){
    rc = FUNC3(&sQueue, pCur, iRoot, 0);
  }
  while( (pAvl = FUNC5(&sQueue))!=0 ){
    if( pAvl->iGeneration>=mxGen ) continue;
    FUNC6(pStmt, 1, pAvl->id);
    while( rc==SQLITE_OK && FUNC15(pStmt)==SQLITE_ROW ){
      if( FUNC8(pStmt,0)==SQLITE_INTEGER ){
        sqlite3_int64 iNew = FUNC7(pStmt, 0);
        if( FUNC1(pCur->pClosure, iNew)==0 ){
          rc = FUNC3(&sQueue, pCur, iNew, pAvl->iGeneration+1);
        }
      }
    }
    FUNC14(pStmt);
  }
  FUNC10(pStmt);
  if( rc==SQLITE_OK ){
    pCur->pCurrent = FUNC0(pCur->pClosure);
  }

  return rc;
}