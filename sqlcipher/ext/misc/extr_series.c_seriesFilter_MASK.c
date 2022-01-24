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
struct TYPE_2__ {int mnValue; int mxValue; int iStep; int isDesc; int iValue; int iRowid; } ;
typedef  TYPE_1__ series_cursor ;

/* Variables and functions */
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
  sqlite3_vtab_cursor *pVtabCursor, 
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  series_cursor *pCur = (series_cursor *)pVtabCursor;
  int i = 0;
  if( idxNum & 1 ){
    pCur->mnValue = FUNC0(argv[i++]);
  }else{
    pCur->mnValue = 0;
  }
  if( idxNum & 2 ){
    pCur->mxValue = FUNC0(argv[i++]);
  }else{
    pCur->mxValue = 0xffffffff;
  }
  if( idxNum & 4 ){
    pCur->iStep = FUNC0(argv[i++]);
    if( pCur->iStep<1 ) pCur->iStep = 1;
  }else{
    pCur->iStep = 1;
  }
  for(i=0; i<argc; i++){
    if( FUNC1(argv[i])==SQLITE_NULL ){
      /* If any of the constraints have a NULL value, then return no rows.
      ** See ticket https://www.sqlite.org/src/info/fac496b61722daf2 */
      pCur->mnValue = 1;
      pCur->mxValue = 0;
      break;
    }
  }
  if( idxNum & 8 ){
    pCur->isDesc = 1;
    pCur->iValue = pCur->mxValue;
    if( pCur->iStep>0 ){
      pCur->iValue -= (pCur->mxValue - pCur->mnValue)%pCur->iStep;
    }
  }else{
    pCur->isDesc = 0;
    pCur->iValue = pCur->mnValue;
  }
  pCur->iRowid = 1;
  return SQLITE_OK;
}