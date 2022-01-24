#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  echo_vtab ;
struct TYPE_5__ {int /*<<< orphan*/ * pStmt; } ;
typedef  TYPE_2__ echo_cursor ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  int iCol = i + 1;
  sqlite3_stmt *pStmt = ((echo_cursor *)cur)->pStmt;

  if( FUNC1((echo_vtab *)(cur->pVtab), "xColumn") ){
    return SQLITE_ERROR;
  }

  if( !pStmt ){
    FUNC4(ctx);
  }else{
    FUNC0( FUNC3(pStmt)>iCol );
    FUNC5(ctx, FUNC2(pStmt, iCol));
  }
  return SQLITE_OK;
}