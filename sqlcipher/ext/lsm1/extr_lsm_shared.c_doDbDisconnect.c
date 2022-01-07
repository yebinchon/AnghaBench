
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int iRwclient; scalar_t__ pShmhdr; int pEnv; int pFS; TYPE_2__* pDatabase; scalar_t__ bReadonly; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_14__ {int pFile; scalar_t__ bMultiProc; } ;
typedef TYPE_2__ Database ;


 int LSM_BUSY ;
 int LSM_LOCK_CHECKPOINTER ;
 int LSM_LOCK_DMS1 ;
 int LSM_LOCK_DMS2 ;
 int LSM_LOCK_DMS3 ;
 int LSM_LOCK_EXCL ;
 int LSM_LOCK_RWCLIENT (int) ;
 int LSM_LOCK_UNLOCK ;
 int LSM_OK ;
 int dbTruncateFile (TYPE_1__*) ;
 int lsmCheckpointWrite (TYPE_1__*,int ) ;
 int lsmDetectRoTrans (TYPE_1__*,int*) ;
 int lsmEnvShmUnmap (int ,int ,int) ;
 int lsmFlushTreeToDisk (TYPE_1__*) ;
 int lsmFsCloseAndDeleteLog (int ) ;
 int lsmFsUnmap (int ) ;
 int lsmShmLock (TYPE_1__*,int ,int ,int) ;
 int lsmShmTestLock (TYPE_1__*,int ,int,int ) ;
 scalar_t__ lsmTreeHasOld (TYPE_1__*) ;
 int lsmTreeLoadHeader (TYPE_1__*,int ) ;
 scalar_t__ lsmTreeSize (TYPE_1__*) ;

__attribute__((used)) static void doDbDisconnect(lsm_db *pDb){
  int rc;

  if( pDb->bReadonly ){
    lsmShmLock(pDb, LSM_LOCK_DMS3, LSM_LOCK_UNLOCK, 0);
  }else{


    rc = lsmShmLock(pDb, LSM_LOCK_DMS1, LSM_LOCK_EXCL, 1);
    if( rc==LSM_OK ){

      lsmShmLock(pDb, LSM_LOCK_DMS2, LSM_LOCK_UNLOCK, 0);




      rc = lsmShmTestLock(pDb, LSM_LOCK_DMS2, 1, LSM_LOCK_EXCL);
      if( rc==LSM_OK ){
        rc = lsmShmTestLock(pDb, LSM_LOCK_CHECKPOINTER, 1, LSM_LOCK_EXCL);
      }
      if( rc==LSM_OK ){
        int bReadonly = 0;
        rc = lsmTreeLoadHeader(pDb, 0);
        if( rc==LSM_OK && (lsmTreeHasOld(pDb) || lsmTreeSize(pDb)>0) ){
          rc = lsmFlushTreeToDisk(pDb);
        }




        if( rc==LSM_OK ){
          rc = lsmShmTestLock(pDb, LSM_LOCK_DMS3, 1, LSM_LOCK_EXCL);
          if( rc==LSM_BUSY ){
            bReadonly = 1;
            rc = LSM_OK;
          }
        }


        if( rc==LSM_OK ){
          rc = lsmCheckpointWrite(pDb, 0);
        }



        if( rc==LSM_OK ){
          int bRotrans = 0;
          Database *p = pDb->pDatabase;



          rc = lsmDetectRoTrans(pDb, &bRotrans);
          if( rc==LSM_OK && bRotrans==0 ){
            lsmFsCloseAndDeleteLog(pDb->pFS);
          }



          if( bReadonly==0 && bRotrans==0 ){
            lsmFsUnmap(pDb->pFS);
            dbTruncateFile(pDb);
            if( p->pFile && p->bMultiProc ){
              lsmEnvShmUnmap(pDb->pEnv, p->pFile, 1);
            }
          }
        }
      }
    }

    if( pDb->iRwclient>=0 ){
      lsmShmLock(pDb, LSM_LOCK_RWCLIENT(pDb->iRwclient), LSM_LOCK_UNLOCK, 0);
      pDb->iRwclient = -1;
    }

    lsmShmLock(pDb, LSM_LOCK_DMS1, LSM_LOCK_UNLOCK, 0);
  }
  pDb->pShmhdr = 0;
}
