
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ eStage; int mLock; } ;
typedef TYPE_2__ sqlite3rbu ;
typedef int sqlite3_file ;
struct TYPE_7__ {int openFlags; TYPE_4__* pReal; TYPE_2__* pRbu; } ;
typedef TYPE_3__ rbu_file ;
struct TYPE_8__ {TYPE_1__* pMethods; } ;
struct TYPE_5__ {int (* xShmLock ) (TYPE_4__*,int,int,int) ;} ;


 scalar_t__ RBU_STAGE_CAPTURE ;
 scalar_t__ RBU_STAGE_MOVE ;
 scalar_t__ RBU_STAGE_OAL ;
 int SQLITE_BUSY ;
 int SQLITE_OK ;
 int SQLITE_OPEN_MAIN_DB ;
 int SQLITE_OPEN_TEMP_DB ;
 int SQLITE_SHM_EXCLUSIVE ;
 int SQLITE_SHM_UNLOCK ;
 int WAL_CKPT_LOCK ;
 int WAL_LOCK_CKPT ;
 int WAL_LOCK_READ0 ;
 int WAL_LOCK_WRITE ;
 int assert (int) ;
 int stub1 (TYPE_4__*,int,int,int) ;

__attribute__((used)) static int rbuVfsShmLock(sqlite3_file *pFile, int ofst, int n, int flags){
  rbu_file *p = (rbu_file*)pFile;
  sqlite3rbu *pRbu = p->pRbu;
  int rc = SQLITE_OK;





  assert( p->openFlags & (SQLITE_OPEN_MAIN_DB|SQLITE_OPEN_TEMP_DB) );
  if( pRbu && (pRbu->eStage==RBU_STAGE_OAL || pRbu->eStage==RBU_STAGE_MOVE) ){




    if( ofst==WAL_LOCK_CKPT && n==1 ) rc = SQLITE_BUSY;
  }else{
    int bCapture = 0;
    if( n==1 && (flags & SQLITE_SHM_EXCLUSIVE)
     && pRbu && pRbu->eStage==RBU_STAGE_CAPTURE
     && (ofst==WAL_LOCK_WRITE || ofst==WAL_LOCK_CKPT || ofst==WAL_LOCK_READ0)
    ){
      bCapture = 1;
    }

    if( bCapture==0 || 0==(flags & SQLITE_SHM_UNLOCK) ){
      rc = p->pReal->pMethods->xShmLock(p->pReal, ofst, n, flags);
      if( bCapture && rc==SQLITE_OK ){
        pRbu->mLock |= (1 << ofst);
      }
    }
  }

  return rc;
}
