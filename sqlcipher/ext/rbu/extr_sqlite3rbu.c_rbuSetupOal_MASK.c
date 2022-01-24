#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ zTbl; scalar_t__ zDataTbl; scalar_t__ zIdx; scalar_t__ bCleanup; } ;
struct TYPE_10__ {int rc; int /*<<< orphan*/  nStep; TYPE_3__ objiter; int /*<<< orphan*/  zErrmsg; } ;
typedef  TYPE_1__ sqlite3rbu ;
struct TYPE_11__ {scalar_t__ zTbl; scalar_t__ zIdx; scalar_t__ zDataTbl; int /*<<< orphan*/  nRow; } ;
typedef  TYPE_2__ RbuState ;
typedef  TYPE_3__ RbuObjIter ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,TYPE_3__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(sqlite3rbu *p, RbuState *pState){
  FUNC0( p->rc==SQLITE_OK );
  if( pState->zTbl ){
    RbuObjIter *pIter = &p->objiter;
    int rc = SQLITE_OK;

    while( rc==SQLITE_OK && pIter->zTbl && (pIter->bCleanup 
       || FUNC3(pIter->zIdx, pState->zIdx)
       || (pState->zDataTbl==0 && FUNC3(pIter->zTbl, pState->zTbl))
       || (pState->zDataTbl && FUNC3(pIter->zDataTbl, pState->zDataTbl))
    )){
      rc = FUNC1(p, pIter);
    }

    if( rc==SQLITE_OK && !pIter->zTbl ){
      rc = SQLITE_ERROR;
      p->zErrmsg = FUNC4("rbu_state mismatch error");
    }

    if( rc==SQLITE_OK ){
      p->nStep = pState->nRow;
      rc = FUNC2(p, &p->objiter, p->nStep);
    }

    p->rc = rc;
  }
}