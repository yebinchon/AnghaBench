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
struct TYPE_2__ {int nStr; scalar_t__ iRowid; scalar_t__ zStr; } ;
typedef  TYPE_1__ prefixes_cursor ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  prefixes_cursor *pCur = (prefixes_cursor *)pVtabCursor;
  FUNC0(pCur->zStr);
  if( argc>0 ){
    pCur->zStr = FUNC1("%s", FUNC2(argv[0]));
    pCur->nStr = pCur->zStr ? (int)FUNC3(pCur->zStr) : 0;
  }else{
    pCur->zStr = 0;
    pCur->nStr = 0;
  }
  pCur->iRowid = 0;
  return SQLITE_OK;
}