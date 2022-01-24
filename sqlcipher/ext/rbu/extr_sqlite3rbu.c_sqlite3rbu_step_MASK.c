#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_28__ {int /*<<< orphan*/  zTbl; int /*<<< orphan*/  pSelect; int /*<<< orphan*/  zDataTbl; int /*<<< orphan*/  abIndexed; int /*<<< orphan*/  bCleanup; } ;
struct TYPE_26__ {int eStage; int rc; size_t nStep; size_t nFrame; int iMaxFrame; int nPagePerSector; int /*<<< orphan*/  nProgress; TYPE_6__* aFrame; TYPE_1__* pTargetFd; int /*<<< orphan*/  zErrmsg; int /*<<< orphan*/  dbRbu; int /*<<< orphan*/  dbMain; int /*<<< orphan*/  zStateDb; TYPE_5__ objiter; } ;
typedef  TYPE_3__ sqlite3rbu ;
struct TYPE_27__ {TYPE_2__* pMethods; } ;
typedef  TYPE_4__ sqlite3_file ;
struct TYPE_29__ {int /*<<< orphan*/  iDbPage; } ;
struct TYPE_25__ {int (* xSync ) (TYPE_4__*,int /*<<< orphan*/ ) ;int (* xShmMap ) (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void volatile**) ;} ;
struct TYPE_24__ {TYPE_4__* pReal; } ;
typedef  TYPE_5__ RbuObjIter ;
typedef  TYPE_6__ RbuFrame ;

/* Variables and functions */
#define  RBU_STAGE_CKPT 130 
 int RBU_STAGE_DONE ; 
#define  RBU_STAGE_MOVE 129 
#define  RBU_STAGE_OAL 128 
 int SQLITE_DONE ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_SYNC_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int FUNC11 (TYPE_3__*) ; 
 void* FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void volatile**) ; 

int FUNC17(sqlite3rbu *p){
  if( p ){
    switch( p->eStage ){
      case RBU_STAGE_OAL: {
        RbuObjIter *pIter = &p->objiter;

        /* If this is an RBU vacuum operation and the state table was empty
        ** when this handle was opened, create the target database schema. */
        if( FUNC5(p) && p->nProgress==0 && p->rc==SQLITE_OK ){
          FUNC3(p);
          FUNC2(p, "user_version");
          FUNC2(p, "application_id");
        }

        while( p->rc==SQLITE_OK && pIter->zTbl ){

          if( pIter->bCleanup ){
            /* Clean up the rbu_tmp_xxx table for the previous table. It 
            ** cannot be dropped as there are currently active SQL statements.
            ** But the contents can be deleted.  */
            if( FUNC5(p)==0 && pIter->abIndexed ){
              FUNC6(p, p->dbRbu, 
                  "DELETE FROM %s.'rbu_tmp_%q'", p->zStateDb, pIter->zDataTbl
              );
            }
          }else{
            FUNC9(p, pIter, 0);

            /* Advance to the next row to process. */
            if( p->rc==SQLITE_OK ){
              int rc = FUNC14(pIter->pSelect);
              if( rc==SQLITE_ROW ){
                p->nProgress++;
                p->nStep++;
                return FUNC11(p);
              }
              p->rc = FUNC13(pIter->pSelect);
              p->nStep = 0;
            }
          }

          FUNC8(p, pIter);
        }

        if( p->rc==SQLITE_OK ){
          FUNC0( pIter->zTbl==0 );
          FUNC10(p, RBU_STAGE_MOVE);
          FUNC4(p);
          if( p->rc==SQLITE_OK ){
            p->rc = FUNC12(p->dbMain, "COMMIT", 0, 0, &p->zErrmsg);
          }
          if( p->rc==SQLITE_OK ){
            p->rc = FUNC12(p->dbRbu, "COMMIT", 0, 0, &p->zErrmsg);
          }
          p->eStage = RBU_STAGE_MOVE;
        }
        break;
      }

      case RBU_STAGE_MOVE: {
        if( p->rc==SQLITE_OK ){
          FUNC7(p);
          p->nProgress++;
        }
        break;
      }

      case RBU_STAGE_CKPT: {
        if( p->rc==SQLITE_OK ){
          if( p->nStep>=p->nFrame ){
            sqlite3_file *pDb = p->pTargetFd->pReal;
  
            /* Sync the db file */
            p->rc = pDb->pMethods->xSync(pDb, SQLITE_SYNC_NORMAL);
  
            /* Update nBackfill */
            if( p->rc==SQLITE_OK ){
              void volatile *ptr;
              p->rc = pDb->pMethods->xShmMap(pDb, 0, 32*1024, 0, &ptr);
              if( p->rc==SQLITE_OK ){
                ((u32 volatile*)ptr)[24] = p->iMaxFrame;
              }
            }
  
            if( p->rc==SQLITE_OK ){
              p->eStage = RBU_STAGE_DONE;
              p->rc = SQLITE_DONE;
            }
          }else{
            /* At one point the following block copied a single frame from the
            ** wal file to the database file. So that one call to sqlite3rbu_step()
            ** checkpointed a single frame. 
            **
            ** However, if the sector-size is larger than the page-size, and the
            ** application calls sqlite3rbu_savestate() or close() immediately
            ** after this step, then rbu_step() again, then a power failure occurs,
            ** then the database page written here may be damaged. Work around
            ** this by checkpointing frames until the next page in the aFrame[]
            ** lies on a different disk sector to the current one. */
            u32 iSector;
            do{
              RbuFrame *pFrame = &p->aFrame[p->nStep];
              iSector = (pFrame->iDbPage-1) / p->nPagePerSector;
              FUNC1(p, pFrame);
              p->nStep++;
            }while( p->nStep<p->nFrame 
                 && iSector==((p->aFrame[p->nStep].iDbPage-1) / p->nPagePerSector)
                 && p->rc==SQLITE_OK
            );
          }
          p->nProgress++;
        }
        break;
      }

      default:
        break;
    }
    return p->rc;
  }else{
    return SQLITE_NOMEM;
  }
}