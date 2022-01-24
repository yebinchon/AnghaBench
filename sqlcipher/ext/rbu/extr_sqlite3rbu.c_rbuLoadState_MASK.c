#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_6__ {int rc; int /*<<< orphan*/  zStateDb; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbRbu; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_7__ {int eStage; int nRow; void* zDataTbl; void* nPhaseOneStep; void* iOalSz; void* iCookie; void* iWalCksum; void* nProgress; void* zIdx; void* zTbl; } ;
typedef  TYPE_2__ RbuState ;

/* Variables and functions */
 int RBU_STAGE_CKPT ; 
 int RBU_STAGE_MOVE ; 
 int RBU_STAGE_OAL ; 
#define  RBU_STATE_CKPT 137 
#define  RBU_STATE_COOKIE 136 
#define  RBU_STATE_DATATBL 135 
#define  RBU_STATE_IDX 134 
#define  RBU_STATE_OALSZ 133 
#define  RBU_STATE_PHASEONESTEP 132 
#define  RBU_STATE_PROGRESS 131 
#define  RBU_STATE_ROW 130 
#define  RBU_STATE_STAGE 129 
#define  RBU_STATE_TBL 128 
 void* SQLITE_CORRUPT ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 void* FUNC2 (char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static RbuState *FUNC9(sqlite3rbu *p){
  RbuState *pRet = 0;
  sqlite3_stmt *pStmt = 0;
  int rc;
  int rc2;

  pRet = (RbuState*)FUNC1(p, sizeof(RbuState));
  if( pRet==0 ) return 0;

  rc = FUNC0(p->dbRbu, &pStmt, &p->zErrmsg, 
      FUNC7("SELECT k, v FROM %s.rbu_state", p->zStateDb)
  );
  while( rc==SQLITE_OK && SQLITE_ROW==FUNC8(pStmt) ){
    switch( FUNC3(pStmt, 0) ){
      case RBU_STATE_STAGE:
        pRet->eStage = FUNC3(pStmt, 1);
        if( pRet->eStage!=RBU_STAGE_OAL
         && pRet->eStage!=RBU_STAGE_MOVE
         && pRet->eStage!=RBU_STAGE_CKPT
        ){
          p->rc = SQLITE_CORRUPT;
        }
        break;

      case RBU_STATE_TBL:
        pRet->zTbl = FUNC2((char*)FUNC5(pStmt, 1), &rc);
        break;

      case RBU_STATE_IDX:
        pRet->zIdx = FUNC2((char*)FUNC5(pStmt, 1), &rc);
        break;

      case RBU_STATE_ROW:
        pRet->nRow = FUNC3(pStmt, 1);
        break;

      case RBU_STATE_PROGRESS:
        pRet->nProgress = FUNC4(pStmt, 1);
        break;

      case RBU_STATE_CKPT:
        pRet->iWalCksum = FUNC4(pStmt, 1);
        break;

      case RBU_STATE_COOKIE:
        pRet->iCookie = (u32)FUNC4(pStmt, 1);
        break;

      case RBU_STATE_OALSZ:
        pRet->iOalSz = (u32)FUNC4(pStmt, 1);
        break;

      case RBU_STATE_PHASEONESTEP:
        pRet->nPhaseOneStep = FUNC4(pStmt, 1);
        break;

      case RBU_STATE_DATATBL:
        pRet->zDataTbl = FUNC2((char*)FUNC5(pStmt, 1), &rc);
        break;

      default:
        rc = SQLITE_CORRUPT;
        break;
    }
  }
  rc2 = FUNC6(pStmt);
  if( rc==SQLITE_OK ) rc = rc2;

  p->rc = rc;
  return pRet;
}