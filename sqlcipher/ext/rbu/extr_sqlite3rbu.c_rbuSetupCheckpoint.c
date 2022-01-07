
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ rc; scalar_t__ nFrame; int pgsz; scalar_t__ iWalCksum; int nPagePerSector; TYPE_2__* pTargetFd; scalar_t__ eStage; int aBuf; int nStep; int dbMain; } ;
typedef TYPE_4__ sqlite3rbu ;
struct TYPE_17__ {TYPE_3__* pMethods; } ;
typedef TYPE_5__ sqlite3_file ;
struct TYPE_18__ {scalar_t__ iWalCksum; int nRow; } ;
struct TYPE_15__ {int (* xSectorSize ) (TYPE_5__*) ;scalar_t__ (* xSync ) (TYPE_5__*,int ) ;} ;
struct TYPE_14__ {TYPE_1__* pWalFd; TYPE_5__* pReal; } ;
struct TYPE_13__ {TYPE_5__* pReal; } ;
typedef TYPE_6__ RbuState ;


 scalar_t__ RBU_STAGE_CAPTURE ;
 scalar_t__ RBU_STAGE_CKPT ;
 scalar_t__ RBU_STAGE_DONE ;
 scalar_t__ SQLITE_DONE ;
 int SQLITE_INTERNAL ;
 scalar_t__ SQLITE_OK ;
 int SQLITE_SYNC_NORMAL ;
 int assert (int) ;
 int rbuMalloc (TYPE_4__*,int) ;
 scalar_t__ rbuShmChecksum (TYPE_4__*) ;
 void* sqlite3_exec (int ,char*,int ,int ,int ) ;
 int stub1 (TYPE_5__*) ;
 scalar_t__ stub2 (TYPE_5__*,int ) ;

__attribute__((used)) static void rbuSetupCheckpoint(sqlite3rbu *p, RbuState *pState){




  if( pState==0 ){
    p->eStage = 0;
    if( p->rc==SQLITE_OK ){
      p->rc = sqlite3_exec(p->dbMain, "SELECT * FROM sqlite_master", 0, 0, 0);
    }
  }
  if( p->rc==SQLITE_OK ){
    int rc2;
    p->eStage = RBU_STAGE_CAPTURE;
    rc2 = sqlite3_exec(p->dbMain, "PRAGMA main.wal_checkpoint=restart", 0, 0,0);
    if( rc2!=SQLITE_INTERNAL ) p->rc = rc2;
  }

  if( p->rc==SQLITE_OK && p->nFrame>0 ){
    p->eStage = RBU_STAGE_CKPT;
    p->nStep = (pState ? pState->nRow : 0);
    p->aBuf = rbuMalloc(p, p->pgsz);
    p->iWalCksum = rbuShmChecksum(p);
  }

  if( p->rc==SQLITE_OK ){
    if( p->nFrame==0 || (pState && pState->iWalCksum!=p->iWalCksum) ){
      p->rc = SQLITE_DONE;
      p->eStage = RBU_STAGE_DONE;
    }else{
      int nSectorSize;
      sqlite3_file *pDb = p->pTargetFd->pReal;
      sqlite3_file *pWal = p->pTargetFd->pWalFd->pReal;
      assert( p->nPagePerSector==0 );
      nSectorSize = pDb->pMethods->xSectorSize(pDb);
      if( nSectorSize>p->pgsz ){
        p->nPagePerSector = nSectorSize / p->pgsz;
      }else{
        p->nPagePerSector = 1;
      }





      p->rc = pWal->pMethods->xSync(pWal, SQLITE_SYNC_NORMAL);
    }
  }
}
