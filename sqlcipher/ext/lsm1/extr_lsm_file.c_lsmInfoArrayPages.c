
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pEnv; int * pFS; int * pWorker; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_9__ {char* z; } ;
typedef int Snapshot ;
typedef int Segment ;
typedef int Page ;
typedef TYPE_2__ LsmString ;
typedef int LsmPgno ;
typedef int FileSystem ;


 int LSM_BUSY ;
 int LSM_ERROR ;
 int LSM_OK ;
 int * findSegment (int *,int ) ;
 int lsmBeginWork (TYPE_1__*) ;
 int lsmFinishWork (TYPE_1__*,int ,int*) ;
 int lsmFree (int ,char*) ;
 int lsmFsDbPageGet (int *,int *,int ,int **) ;
 int lsmFsDbPageNext (int *,int *,int,int **) ;
 int lsmFsPageNumber (int *) ;
 int lsmFsPageRelease (int *) ;
 int lsmStringAppendf (TYPE_2__*,char*,int ) ;
 int lsmStringInit (TYPE_2__*,int ) ;

int lsmInfoArrayPages(lsm_db *pDb, LsmPgno iFirst, char **pzOut){
  int rc = LSM_OK;
  Snapshot *pWorker;
  Segment *pSeg = 0;
  int bUnlock = 0;

  *pzOut = 0;
  if( iFirst==0 ) return LSM_ERROR;


  pWorker = pDb->pWorker;
  if( !pWorker ){
    rc = lsmBeginWork(pDb);
    if( rc!=LSM_OK ) return rc;
    pWorker = pDb->pWorker;
    bUnlock = 1;
  }


  pSeg = findSegment(pWorker, iFirst);

  if( pSeg==0 ){

    rc = LSM_ERROR;
  }else{
    Page *pPg = 0;
    FileSystem *pFS = pDb->pFS;
    LsmString str;

    lsmStringInit(&str, pDb->pEnv);
    rc = lsmFsDbPageGet(pFS, pSeg, iFirst, &pPg);
    while( rc==LSM_OK && pPg ){
      Page *pNext = 0;
      lsmStringAppendf(&str, " %lld", lsmFsPageNumber(pPg));
      rc = lsmFsDbPageNext(pSeg, pPg, 1, &pNext);
      lsmFsPageRelease(pPg);
      pPg = pNext;
    }

    if( rc!=LSM_OK ){
      lsmFree(pDb->pEnv, str.z);
    }else{
      *pzOut = str.z;
    }
  }

  if( bUnlock ){
    int rcwork = LSM_BUSY;
    lsmFinishWork(pDb, 0, &rcwork);
  }
  return rc;
}
