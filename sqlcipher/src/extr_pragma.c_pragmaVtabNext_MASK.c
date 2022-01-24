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
struct TYPE_3__ {scalar_t__ pPragma; int /*<<< orphan*/  iRowid; } ;
typedef  TYPE_1__ PragmaVtabCursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab_cursor *pVtabCursor){
  PragmaVtabCursor *pCsr = (PragmaVtabCursor*)pVtabCursor;
  int rc = SQLITE_OK;

  /* Increment the xRowid value */
  pCsr->iRowid++;
  FUNC0( pCsr->pPragma );
  if( SQLITE_ROW!=FUNC3(pCsr->pPragma) ){
    rc = FUNC2(pCsr->pPragma);
    pCsr->pPragma = 0;
    FUNC1(pCsr);
  }
  return rc;
}