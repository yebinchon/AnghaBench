#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_7__ {int nMem; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Parse ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Vacuum ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(Parse *pParse, Token *pNm, Expr *pInto){
  Vdbe *v = FUNC3(pParse);
  int iDb = 0;
  if( v==0 ) goto build_vacuum_end;
  if( pNm ){
#ifndef SQLITE_BUG_COMPATIBLE_20160819
    /* Default behavior:  Report an error if the argument to VACUUM is
    ** not recognized */
    iDb = FUNC5(pParse, pNm, pNm, &pNm);
    if( iDb<0 ) goto build_vacuum_end;
#else
    /* When SQLITE_BUG_COMPATIBLE_20160819 is defined, unrecognized arguments
    ** to VACUUM are silently ignored.  This is a back-out of a bug fix that
    ** occurred on 2016-08-19 (https://www.sqlite.org/src/info/083f9e6270).
    ** The buggy behavior is required for binary compatibility with some
    ** legacy applications. */
    iDb = sqlite3FindDb(pParse->db, pNm);
    if( iDb<0 ) iDb = 0;
#endif
  }
  if( iDb!=1 ){
    int iIntoReg = 0;
    if( pInto && FUNC4(pParse,0,0,pInto,0)==0 ){
      iIntoReg = ++pParse->nMem;
      FUNC0(pParse, pInto, iIntoReg);
    }
    FUNC6(v, OP_Vacuum, iDb, iIntoReg);
    FUNC7(v, iDb);
  }
build_vacuum_end:
  FUNC1(pParse->db, pInto);
  return;
}