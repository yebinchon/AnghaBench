
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct TYPE_22__ {scalar_t__ zTbl; } ;
struct TYPE_23__ {int rc; char* zTarget; char* zRbu; scalar_t__ eStage; void* zErrmsg; TYPE_10__ objiter; int * dbRbu; int * dbMain; TYPE_2__* pTargetFd; TYPE_2__* pRbuFd; scalar_t__ nStep; int iOalSz; int nProgress; int nPhaseOneStep; int zState; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3 ;
struct TYPE_24__ {scalar_t__ iCookie; scalar_t__ pWalFd; } ;
typedef TYPE_2__ rbu_file ;
struct TYPE_25__ {scalar_t__ eStage; scalar_t__ iCookie; int iOalSz; int nProgress; int nPhaseOneStep; } ;
typedef TYPE_3__ RbuState ;


 scalar_t__ RBU_STAGE_CKPT ;
 scalar_t__ RBU_STAGE_DONE ;
 scalar_t__ RBU_STAGE_MOVE ;
 scalar_t__ RBU_STAGE_OAL ;
 int SQLITE_BUSY ;
 int SQLITE_CORRUPT ;
 void* SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_FCNTL_ZIPVFS ;
 int SQLITE_OK ;
 int assert (int) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int rbuCopyPragma (TYPE_1__*,char*) ;
 int rbuCreateVfs (TYPE_1__*) ;
 int rbuDeleteOalFile (TYPE_1__*) ;
 int rbuFreeState (TYPE_3__*) ;
 int rbuInitPhaseOneSteps (TYPE_1__*) ;
 scalar_t__ rbuIsVacuum (TYPE_1__*) ;
 TYPE_3__* rbuLoadState (TYPE_1__*) ;
 int rbuMPrintf (TYPE_1__*,char*,char const*) ;
 int rbuObjIterFirst (TYPE_1__*,TYPE_10__*) ;
 int rbuOpenDatabase (TYPE_1__*,int*) ;
 int rbuSetupCheckpoint (TYPE_1__*,TYPE_3__*) ;
 int rbuSetupOal (TYPE_1__*,TYPE_3__*) ;
 void* sqlite3_exec (int *,char*,int ,int ,void**) ;
 int sqlite3_file_control (int *,char*,int ,int ) ;
 scalar_t__ sqlite3_malloc64 (size_t) ;
 void* sqlite3_mprintf (char*,...) ;
 size_t strlen (char const*) ;

__attribute__((used)) static sqlite3rbu *openRbuHandle(
  const char *zTarget,
  const char *zRbu,
  const char *zState
){
  sqlite3rbu *p;
  size_t nTarget = zTarget ? strlen(zTarget) : 0;
  size_t nRbu = strlen(zRbu);
  size_t nByte = sizeof(sqlite3rbu) + nTarget+1 + nRbu+1;

  p = (sqlite3rbu*)sqlite3_malloc64(nByte);
  if( p ){
    RbuState *pState = 0;


    memset(p, 0, sizeof(sqlite3rbu));
    rbuCreateVfs(p);


    if( p->rc==SQLITE_OK ){
      char *pCsr = (char*)&p[1];
      int bRetry = 0;
      if( zTarget ){
        p->zTarget = pCsr;
        memcpy(p->zTarget, zTarget, nTarget+1);
        pCsr += nTarget+1;
      }
      p->zRbu = pCsr;
      memcpy(p->zRbu, zRbu, nRbu+1);
      pCsr += nRbu+1;
      if( zState ){
        p->zState = rbuMPrintf(p, "%s", zState);
      }
      rbuOpenDatabase(p, &bRetry);
      if( bRetry ){
        rbuOpenDatabase(p, 0);
      }
    }

    if( p->rc==SQLITE_OK ){
      pState = rbuLoadState(p);
      assert( pState || p->rc!=SQLITE_OK );
      if( p->rc==SQLITE_OK ){

        if( pState->eStage==0 ){
          rbuDeleteOalFile(p);
          rbuInitPhaseOneSteps(p);
          p->eStage = RBU_STAGE_OAL;
        }else{
          p->eStage = pState->eStage;
          p->nPhaseOneStep = pState->nPhaseOneStep;
        }
        p->nProgress = pState->nProgress;
        p->iOalSz = pState->iOalSz;
      }
    }
    assert( p->rc!=SQLITE_OK || p->eStage!=0 );

    if( p->rc==SQLITE_OK && p->pTargetFd->pWalFd ){
      if( p->eStage==RBU_STAGE_OAL ){
        p->rc = SQLITE_ERROR;
        p->zErrmsg = sqlite3_mprintf("cannot update wal mode database");
      }else if( p->eStage==RBU_STAGE_MOVE ){
        p->eStage = RBU_STAGE_CKPT;
        p->nStep = 0;
      }
    }

    if( p->rc==SQLITE_OK
     && (p->eStage==RBU_STAGE_OAL || p->eStage==RBU_STAGE_MOVE)
     && pState->eStage!=0
    ){
      rbu_file *pFd = (rbuIsVacuum(p) ? p->pRbuFd : p->pTargetFd);
      if( pFd->iCookie!=pState->iCookie ){




        p->rc = SQLITE_BUSY;
        p->zErrmsg = sqlite3_mprintf("database modified during rbu %s",
            (rbuIsVacuum(p) ? "vacuum" : "update")
        );
      }
    }

    if( p->rc==SQLITE_OK ){
      if( p->eStage==RBU_STAGE_OAL ){
        sqlite3 *db = p->dbMain;
        p->rc = sqlite3_exec(p->dbRbu, "BEGIN", 0, 0, &p->zErrmsg);


        if( p->rc==SQLITE_OK ){
          p->rc = rbuObjIterFirst(p, &p->objiter);
        }



        if( p->rc==SQLITE_OK && p->objiter.zTbl==0 ){
          p->rc = SQLITE_DONE;
          p->eStage = RBU_STAGE_DONE;
        }else{
          if( p->rc==SQLITE_OK && pState->eStage==0 && rbuIsVacuum(p) ){
            rbuCopyPragma(p, "page_size");
            rbuCopyPragma(p, "auto_vacuum");
          }



          if( p->rc==SQLITE_OK ){
            p->rc = sqlite3_exec(db, "BEGIN IMMEDIATE", 0, 0, &p->zErrmsg);
          }




          if( p->rc==SQLITE_OK ){
            int frc = sqlite3_file_control(db, "main", SQLITE_FCNTL_ZIPVFS, 0);
            if( frc==SQLITE_OK ){
              p->rc = sqlite3_exec(
                db, "PRAGMA journal_mode=off",0,0,&p->zErrmsg);
            }
          }

          if( p->rc==SQLITE_OK ){
            rbuSetupOal(p, pState);
          }
        }
      }else if( p->eStage==RBU_STAGE_MOVE ){

      }else if( p->eStage==RBU_STAGE_CKPT ){
        rbuSetupCheckpoint(p, pState);
      }else if( p->eStage==RBU_STAGE_DONE ){
        p->rc = SQLITE_DONE;
      }else{
        p->rc = SQLITE_CORRUPT;
      }
    }

    rbuFreeState(pState);
  }

  return p;
}
