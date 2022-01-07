
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zDataTbl; int zIdx; int zTbl; } ;
struct TYPE_7__ {int rc; TYPE_1__ objiter; int nPhaseOneStep; int iOalSz; int iWalCksum; int nProgress; int nStep; int zStateDb; int zErrmsg; int dbRbu; TYPE_3__* pTargetFd; TYPE_3__* pRbuFd; } ;
typedef TYPE_2__ sqlite3rbu ;
typedef int sqlite3_stmt ;
struct TYPE_8__ {scalar_t__ iCookie; } ;
typedef TYPE_3__ rbu_file ;
typedef int i64 ;


 int RBU_STATE_CKPT ;
 int RBU_STATE_COOKIE ;
 int RBU_STATE_DATATBL ;
 int RBU_STATE_IDX ;
 int RBU_STATE_OALSZ ;
 int RBU_STATE_PHASEONESTEP ;
 int RBU_STATE_PROGRESS ;
 int RBU_STATE_ROW ;
 int RBU_STATE_STAGE ;
 int RBU_STATE_TBL ;
 scalar_t__ SQLITE_DONE ;
 int SQLITE_OK ;
 int assert (int) ;
 int prepareFreeAndCollectError (int ,int **,int *,int ) ;
 scalar_t__ rbuIsVacuum (TYPE_2__*) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_mprintf (char*,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static void rbuSaveState(sqlite3rbu *p, int eStage){
  if( p->rc==SQLITE_OK || p->rc==SQLITE_DONE ){
    sqlite3_stmt *pInsert = 0;
    rbu_file *pFd = (rbuIsVacuum(p) ? p->pRbuFd : p->pTargetFd);
    int rc;

    assert( p->zErrmsg==0 );
    rc = prepareFreeAndCollectError(p->dbRbu, &pInsert, &p->zErrmsg,
        sqlite3_mprintf(
          "INSERT OR REPLACE INTO %s.rbu_state(k, v) VALUES "
          "(%d, %d), "
          "(%d, %Q), "
          "(%d, %Q), "
          "(%d, %d), "
          "(%d, %d), "
          "(%d, %lld), "
          "(%d, %lld), "
          "(%d, %lld), "
          "(%d, %lld), "
          "(%d, %Q)  ",
          p->zStateDb,
          RBU_STATE_STAGE, eStage,
          RBU_STATE_TBL, p->objiter.zTbl,
          RBU_STATE_IDX, p->objiter.zIdx,
          RBU_STATE_ROW, p->nStep,
          RBU_STATE_PROGRESS, p->nProgress,
          RBU_STATE_CKPT, p->iWalCksum,
          RBU_STATE_COOKIE, (i64)pFd->iCookie,
          RBU_STATE_OALSZ, p->iOalSz,
          RBU_STATE_PHASEONESTEP, p->nPhaseOneStep,
          RBU_STATE_DATATBL, p->objiter.zDataTbl
      )
    );
    assert( pInsert==0 || rc==SQLITE_OK );

    if( rc==SQLITE_OK ){
      sqlite3_step(pInsert);
      rc = sqlite3_finalize(pInsert);
    }
    if( rc!=SQLITE_OK ) p->rc = rc;
  }
}
