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
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {char* zIdxName; char* zAfterKey; int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_1__ CidxCursor ;

/* Variables and functions */
#define  IIC_AFTER_KEY 132 
#define  IIC_CURRENT_KEY 131 
#define  IIC_ERRMSG 130 
#define  IIC_INDEX_NAME 129 
#define  IIC_SCANNER_SQL 128 
 int /*<<< orphan*/  SQLITE_INTEGER ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sqlite3_free ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
  sqlite3_vtab_cursor *pCursor, 
  sqlite3_context *ctx, 
  int iCol
){
  CidxCursor *pCsr = (CidxCursor*)pCursor;
  FUNC0( iCol>=IIC_ERRMSG && iCol<=IIC_SCANNER_SQL );
  switch( iCol ){
    case IIC_ERRMSG: {
      const char *zVal = 0;
      if( FUNC3(pCsr->pStmt, 0)==SQLITE_INTEGER ){
        if( FUNC2(pCsr->pStmt, 0)==0 ){
          zVal = "row data mismatch";
        }
      }else{
        zVal = "row missing";
      }
      FUNC5(ctx, zVal, -1, SQLITE_STATIC);
      break;
    }
    case IIC_CURRENT_KEY: {
      FUNC6(ctx, FUNC4(pCsr->pStmt, 1));
      break;
    }
    case IIC_INDEX_NAME: {
      FUNC5(ctx, pCsr->zIdxName, -1, SQLITE_TRANSIENT);
      break;
    }
    case IIC_AFTER_KEY: {
      FUNC5(ctx, pCsr->zAfterKey, -1, SQLITE_TRANSIENT);
      break;
    }
    case IIC_SCANNER_SQL: {
      char *zSql = 0;
      FUNC1(pCsr, pCsr->zIdxName, pCsr->zAfterKey, &zSql);
      FUNC5(ctx, zSql, -1, sqlite3_free);
      break;
    }
  }
  return SQLITE_OK;
}