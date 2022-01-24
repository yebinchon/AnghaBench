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
typedef  int /*<<< orphan*/  echo_vtab ;
struct TYPE_5__ {scalar_t__ pStmt; } ;
typedef  TYPE_2__ echo_cursor ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(sqlite3_vtab_cursor *cur){
  int rc = SQLITE_OK;
  echo_cursor *pCur = (echo_cursor *)cur;

  if( FUNC0((echo_vtab *)(cur->pVtab), "xNext") ){
    return SQLITE_ERROR;
  }

  if( pCur->pStmt ){
    rc = FUNC2(pCur->pStmt);
    if( rc==SQLITE_ROW ){
      rc = SQLITE_OK;
    }else{
      rc = FUNC1(pCur->pStmt);
      pCur->pStmt = 0;
    }
  }

  return rc;
}