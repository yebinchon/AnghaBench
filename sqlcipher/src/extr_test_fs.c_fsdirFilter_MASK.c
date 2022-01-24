#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab_cursor ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_2__ {int /*<<< orphan*/  zDir; scalar_t__ pDir; scalar_t__ iRowid; } ;
typedef  TYPE_1__ FsdirCsr ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  FsdirCsr *pCsr = (FsdirCsr*)pVtabCursor;
  const char *zDir;
  int nDir;


  if( idxNum!=1 || argc!=1 ){
    return SQLITE_ERROR;
  }

  pCsr->iRowid = 0;
  FUNC4(pCsr->zDir);
  if( pCsr->pDir ){
    FUNC0(pCsr->pDir);
    pCsr->pDir = 0;
  }

  zDir = (const char*)FUNC7(argv[0]);
  nDir = FUNC6(argv[0]);
  pCsr->zDir = FUNC5(nDir+1);
  if( pCsr->zDir==0 ) return SQLITE_NOMEM;
  FUNC2(pCsr->zDir, zDir, nDir+1);

  pCsr->pDir = FUNC3(pCsr->zDir);
  return FUNC1(pVtabCursor); 
}