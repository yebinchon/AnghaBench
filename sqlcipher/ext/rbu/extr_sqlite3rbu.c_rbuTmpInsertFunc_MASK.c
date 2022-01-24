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
struct TYPE_4__ {scalar_t__ eType; int /*<<< orphan*/  pTmpInsert; scalar_t__ nIndex; } ;
struct TYPE_5__ {TYPE_1__ objiter; int /*<<< orphan*/  nPhaseOneStep; } ;
typedef  TYPE_2__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 scalar_t__ RBU_PK_EXTERNAL ; 
 scalar_t__ RBU_PK_NONE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(
  sqlite3_context *pCtx, 
  int nVal,
  sqlite3_value **apVal
){
  sqlite3rbu *p = FUNC5(pCtx);
  int rc = SQLITE_OK;
  int i;

  FUNC0( FUNC6(apVal[0])!=0
      || p->objiter.eType==RBU_PK_EXTERNAL 
      || p->objiter.eType==RBU_PK_NONE 
  );
  if( FUNC6(apVal[0])!=0 ){
    p->nPhaseOneStep += p->objiter.nIndex;
  }

  for(i=0; rc==SQLITE_OK && i<nVal; i++){
    rc = FUNC1(p->objiter.pTmpInsert, i+1, apVal[i]);
  }
  if( rc==SQLITE_OK ){
    FUNC4(p->objiter.pTmpInsert);
    rc = FUNC2(p->objiter.pTmpInsert);
  }

  if( rc!=SQLITE_OK ){
    FUNC3(pCtx, rc);
  }
}