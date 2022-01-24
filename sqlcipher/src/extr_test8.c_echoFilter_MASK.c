#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ pVtab; } ;
typedef  TYPE_1__ sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_8__ {int /*<<< orphan*/  interp; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ echo_vtab ;
struct TYPE_9__ {scalar_t__ pStmt; } ;
typedef  TYPE_3__ echo_cursor ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char*) ; 
 int FUNC5 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  int rc;
  int i;

  echo_cursor *pCur = (echo_cursor *)pVtabCursor;
  echo_vtab *pVtab = (echo_vtab *)pVtabCursor->pVtab;
  sqlite3 *db = pVtab->db;

  if( FUNC4(pVtab, "xFilter") ){
    return SQLITE_ERROR;
  }

  /* Check that idxNum matches idxStr */
  FUNC1( idxNum==FUNC3(idxStr) );

  /* Log arguments to the ::echo_module Tcl variable */
  FUNC0(pVtab->interp, "xFilter");
  FUNC0(pVtab->interp, idxStr);
  for(i=0; i<argc; i++){
    FUNC0(pVtab->interp, (const char*)FUNC8(argv[i]));
  }

  FUNC6(pCur->pStmt);
  pCur->pStmt = 0;

  /* Prepare the SQL statement created by echoBestIndex and bind the
  ** runtime parameters passed to this function to it.
  */
  rc = FUNC7(db, idxStr, -1, &pCur->pStmt, 0);
  FUNC1( pCur->pStmt || rc!=SQLITE_OK );
  for(i=0; rc==SQLITE_OK && i<argc; i++){
    rc = FUNC5(pCur->pStmt, i+1, argv[i]);
  }

  /* If everything was successful, advance to the first row of the scan */
  if( rc==SQLITE_OK ){
    rc = FUNC2(pVtabCursor);
  }

  return rc;
}