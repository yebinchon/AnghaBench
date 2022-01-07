
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_28__ {int zTbl; int pSelect; int zDataTbl; int abIndexed; int bCleanup; } ;
struct TYPE_26__ {int eStage; int rc; size_t nStep; size_t nFrame; int iMaxFrame; int nPagePerSector; int nProgress; TYPE_6__* aFrame; TYPE_1__* pTargetFd; int zErrmsg; int dbRbu; int dbMain; int zStateDb; TYPE_5__ objiter; } ;
typedef TYPE_3__ sqlite3rbu ;
struct TYPE_27__ {TYPE_2__* pMethods; } ;
typedef TYPE_4__ sqlite3_file ;
struct TYPE_29__ {int iDbPage; } ;
struct TYPE_25__ {int (* xSync ) (TYPE_4__*,int ) ;int (* xShmMap ) (TYPE_4__*,int ,int,int ,void volatile**) ;} ;
struct TYPE_24__ {TYPE_4__* pReal; } ;
typedef TYPE_5__ RbuObjIter ;
typedef TYPE_6__ RbuFrame ;



 int RBU_STAGE_DONE ;


 int SQLITE_DONE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int SQLITE_SYNC_NORMAL ;
 int assert (int) ;
 int rbuCheckpointFrame (TYPE_3__*,TYPE_6__*) ;
 int rbuCopyPragma (TYPE_3__*,char*) ;
 int rbuCreateTargetSchema (TYPE_3__*) ;
 int rbuIncrSchemaCookie (TYPE_3__*) ;
 int rbuIsVacuum (TYPE_3__*) ;
 int rbuMPrintfExec (TYPE_3__*,int ,char*,int ,int ) ;
 int rbuMoveOalFile (TYPE_3__*) ;
 int rbuObjIterNext (TYPE_3__*,TYPE_5__*) ;
 int rbuObjIterPrepareAll (TYPE_3__*,TYPE_5__*,int ) ;
 int rbuSaveState (TYPE_3__*,int) ;
 int rbuStep (TYPE_3__*) ;
 void* sqlite3_exec (int ,char*,int ,int ,int *) ;
 int sqlite3_reset (int ) ;
 int sqlite3_step (int ) ;
 int stub1 (TYPE_4__*,int ) ;
 int stub2 (TYPE_4__*,int ,int,int ,void volatile**) ;

int sqlite3rbu_step(sqlite3rbu *p){
  if( p ){
    switch( p->eStage ){
      case 128: {
        RbuObjIter *pIter = &p->objiter;



        if( rbuIsVacuum(p) && p->nProgress==0 && p->rc==SQLITE_OK ){
          rbuCreateTargetSchema(p);
          rbuCopyPragma(p, "user_version");
          rbuCopyPragma(p, "application_id");
        }

        while( p->rc==SQLITE_OK && pIter->zTbl ){

          if( pIter->bCleanup ){



            if( rbuIsVacuum(p)==0 && pIter->abIndexed ){
              rbuMPrintfExec(p, p->dbRbu,
                  "DELETE FROM %s.'rbu_tmp_%q'", p->zStateDb, pIter->zDataTbl
              );
            }
          }else{
            rbuObjIterPrepareAll(p, pIter, 0);


            if( p->rc==SQLITE_OK ){
              int rc = sqlite3_step(pIter->pSelect);
              if( rc==SQLITE_ROW ){
                p->nProgress++;
                p->nStep++;
                return rbuStep(p);
              }
              p->rc = sqlite3_reset(pIter->pSelect);
              p->nStep = 0;
            }
          }

          rbuObjIterNext(p, pIter);
        }

        if( p->rc==SQLITE_OK ){
          assert( pIter->zTbl==0 );
          rbuSaveState(p, 129);
          rbuIncrSchemaCookie(p);
          if( p->rc==SQLITE_OK ){
            p->rc = sqlite3_exec(p->dbMain, "COMMIT", 0, 0, &p->zErrmsg);
          }
          if( p->rc==SQLITE_OK ){
            p->rc = sqlite3_exec(p->dbRbu, "COMMIT", 0, 0, &p->zErrmsg);
          }
          p->eStage = 129;
        }
        break;
      }

      case 129: {
        if( p->rc==SQLITE_OK ){
          rbuMoveOalFile(p);
          p->nProgress++;
        }
        break;
      }

      case 130: {
        if( p->rc==SQLITE_OK ){
          if( p->nStep>=p->nFrame ){
            sqlite3_file *pDb = p->pTargetFd->pReal;


            p->rc = pDb->pMethods->xSync(pDb, SQLITE_SYNC_NORMAL);


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
            u32 iSector;
            do{
              RbuFrame *pFrame = &p->aFrame[p->nStep];
              iSector = (pFrame->iDbPage-1) / p->nPagePerSector;
              rbuCheckpointFrame(p, pFrame);
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
