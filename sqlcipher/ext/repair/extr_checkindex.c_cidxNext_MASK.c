#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_7__ {int /*<<< orphan*/  iRowid; TYPE_1__ base; scalar_t__ pStmt; } ;
struct TYPE_6__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ CidxTable ;
typedef  TYPE_3__ CidxCursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab_cursor *pCursor){
  CidxCursor *pCsr = (CidxCursor*)pCursor;
  int rc = FUNC3(pCsr->pStmt);
  if( rc!=SQLITE_ROW ){
    rc = FUNC2(pCsr->pStmt);
    pCsr->pStmt = 0;
    if( rc!=SQLITE_OK ){
      sqlite3 *db = ((CidxTable*)pCsr->base.pVtab)->db;
      FUNC0(pCsr, "Cursor error: %s", FUNC1(db));
    }
  }else{
    pCsr->iRowid++;
    rc = SQLITE_OK;
  }
  return rc;
}