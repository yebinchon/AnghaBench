#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ zTbl; } ;
struct TYPE_23__ {int rc; char* zTarget; char* zRbu; scalar_t__ eStage; void* zErrmsg; TYPE_10__ objiter; int /*<<< orphan*/ * dbRbu; int /*<<< orphan*/ * dbMain; TYPE_2__* pTargetFd; TYPE_2__* pRbuFd; scalar_t__ nStep; int /*<<< orphan*/  iOalSz; int /*<<< orphan*/  nProgress; int /*<<< orphan*/  nPhaseOneStep; int /*<<< orphan*/  zState; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_24__ {scalar_t__ iCookie; scalar_t__ pWalFd; } ;
typedef  TYPE_2__ rbu_file ;
struct TYPE_25__ {scalar_t__ eStage; scalar_t__ iCookie; int /*<<< orphan*/  iOalSz; int /*<<< orphan*/  nProgress; int /*<<< orphan*/  nPhaseOneStep; } ;
typedef  TYPE_3__ RbuState ;

/* Variables and functions */
 scalar_t__ RBU_STAGE_CKPT ; 
 scalar_t__ RBU_STAGE_DONE ; 
 scalar_t__ RBU_STAGE_MOVE ; 
 scalar_t__ RBU_STAGE_OAL ; 
 int SQLITE_BUSY ; 
 int SQLITE_CORRUPT ; 
 void* SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 int /*<<< orphan*/  SQLITE_FCNTL_ZIPVFS ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 TYPE_3__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char const*) ; 
 int FUNC11 (TYPE_1__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_3__*) ; 
 void* FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (size_t) ; 
 void* FUNC18 (char*,...) ; 
 size_t FUNC19 (char const*) ; 

__attribute__((used)) static sqlite3rbu *FUNC20(
  const char *zTarget, 
  const char *zRbu,
  const char *zState
){
  sqlite3rbu *p;
  size_t nTarget = zTarget ? FUNC19(zTarget) : 0;
  size_t nRbu = FUNC19(zRbu);
  size_t nByte = sizeof(sqlite3rbu) + nTarget+1 + nRbu+1;

  p = (sqlite3rbu*)FUNC17(nByte);
  if( p ){
    RbuState *pState = 0;

    /* Create the custom VFS. */
    FUNC2(p, 0, sizeof(sqlite3rbu));
    FUNC4(p);

    /* Open the target, RBU and state databases */
    if( p->rc==SQLITE_OK ){
      char *pCsr = (char*)&p[1];
      int bRetry = 0;
      if( zTarget ){
        p->zTarget = pCsr;
        FUNC1(p->zTarget, zTarget, nTarget+1);
        pCsr += nTarget+1;
      }
      p->zRbu = pCsr;
      FUNC1(p->zRbu, zRbu, nRbu+1);
      pCsr += nRbu+1;
      if( zState ){
        p->zState = FUNC10(p, "%s", zState);
      }

      /* If the first attempt to open the database file fails and the bRetry
      ** flag it set, this means that the db was not opened because it seemed
      ** to be a wal-mode db. But, this may have happened due to an earlier
      ** RBU vacuum operation leaving an old wal file in the directory.
      ** If this is the case, it will have been checkpointed and deleted
      ** when the handle was closed and a second attempt to open the 
      ** database may succeed.  */
      FUNC12(p, &bRetry);
      if( bRetry ){
        FUNC12(p, 0);
      }
    }

    if( p->rc==SQLITE_OK ){
      pState = FUNC9(p);
      FUNC0( pState || p->rc!=SQLITE_OK );
      if( p->rc==SQLITE_OK ){

        if( pState->eStage==0 ){ 
          FUNC5(p);
          FUNC7(p);
          p->eStage = RBU_STAGE_OAL;
        }else{
          p->eStage = pState->eStage;
          p->nPhaseOneStep = pState->nPhaseOneStep;
        }
        p->nProgress = pState->nProgress;
        p->iOalSz = pState->iOalSz;
      }
    }
    FUNC0( p->rc!=SQLITE_OK || p->eStage!=0 );

    if( p->rc==SQLITE_OK && p->pTargetFd->pWalFd ){
      if( p->eStage==RBU_STAGE_OAL ){
        p->rc = SQLITE_ERROR;
        p->zErrmsg = FUNC18("cannot update wal mode database");
      }else if( p->eStage==RBU_STAGE_MOVE ){
        p->eStage = RBU_STAGE_CKPT;
        p->nStep = 0;
      }
    }

    if( p->rc==SQLITE_OK 
     && (p->eStage==RBU_STAGE_OAL || p->eStage==RBU_STAGE_MOVE)
     && pState->eStage!=0
    ){
      rbu_file *pFd = (FUNC8(p) ? p->pRbuFd : p->pTargetFd);
      if( pFd->iCookie!=pState->iCookie ){   
        /* At this point (pTargetFd->iCookie) contains the value of the
        ** change-counter cookie (the thing that gets incremented when a 
        ** transaction is committed in rollback mode) currently stored on 
        ** page 1 of the database file. */
        p->rc = SQLITE_BUSY;
        p->zErrmsg = FUNC18("database modified during rbu %s",
            (FUNC8(p) ? "vacuum" : "update")
        );
      }
    }

    if( p->rc==SQLITE_OK ){
      if( p->eStage==RBU_STAGE_OAL ){
        sqlite3 *db = p->dbMain;
        p->rc = FUNC15(p->dbRbu, "BEGIN", 0, 0, &p->zErrmsg);

        /* Point the object iterator at the first object */
        if( p->rc==SQLITE_OK ){
          p->rc = FUNC11(p, &p->objiter);
        }

        /* If the RBU database contains no data_xxx tables, declare the RBU
        ** update finished.  */
        if( p->rc==SQLITE_OK && p->objiter.zTbl==0 ){
          p->rc = SQLITE_DONE;
          p->eStage = RBU_STAGE_DONE;
        }else{
          if( p->rc==SQLITE_OK && pState->eStage==0 && FUNC8(p) ){
            FUNC3(p, "page_size");
            FUNC3(p, "auto_vacuum");
          }

          /* Open transactions both databases. The *-oal file is opened or
          ** created at this point. */
          if( p->rc==SQLITE_OK ){
            p->rc = FUNC15(db, "BEGIN IMMEDIATE", 0, 0, &p->zErrmsg);
          }

          /* Check if the main database is a zipvfs db. If it is, set the upper
          ** level pager to use "journal_mode=off". This prevents it from 
          ** generating a large journal using a temp file.  */
          if( p->rc==SQLITE_OK ){
            int frc = FUNC16(db, "main", SQLITE_FCNTL_ZIPVFS, 0);
            if( frc==SQLITE_OK ){
              p->rc = FUNC15(
                db, "PRAGMA journal_mode=off",0,0,&p->zErrmsg);
            }
          }

          if( p->rc==SQLITE_OK ){
            FUNC14(p, pState);
          }
        }
      }else if( p->eStage==RBU_STAGE_MOVE ){
        /* no-op */
      }else if( p->eStage==RBU_STAGE_CKPT ){
        FUNC13(p, pState);
      }else if( p->eStage==RBU_STAGE_DONE ){
        p->rc = SQLITE_DONE;
      }else{
        p->rc = SQLITE_CORRUPT;
      }
    }

    FUNC6(pState);
  }

  return p;
}