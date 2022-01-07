
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_25__ {scalar_t__ iId; } ;
struct TYPE_27__ {int nMaxFreelist; TYPE_3__ compress; int pEnv; TYPE_6__* pWorker; int * pFS; } ;
typedef TYPE_5__ lsm_db ;
typedef int i64 ;
struct TYPE_31__ {scalar_t__ aCkpt; int pEnv; } ;
struct TYPE_30__ {int iBlk; int iId; } ;
struct TYPE_29__ {struct TYPE_29__* pNext; } ;
struct TYPE_26__ {int nEntry; TYPE_8__* aEntry; } ;
struct TYPE_24__ {int n; TYPE_1__* a; } ;
struct TYPE_28__ {scalar_t__ iCmpId; int nBlock; int nWrite; TYPE_4__ freelist; TYPE_2__ redirect; } ;
struct TYPE_23__ {int iFrom; int iTo; } ;
typedef TYPE_6__ Snapshot ;
typedef TYPE_7__ Level ;
typedef TYPE_8__ FreelistEntry ;
typedef int FileSystem ;
typedef TYPE_9__ CkptBuffer ;


 int CKPT_HDR_BLKSZ ;
 int CKPT_HDR_CMPID ;
 int CKPT_HDR_ID_LSW ;
 int CKPT_HDR_ID_MSW ;
 int CKPT_HDR_NBLOCK ;
 int CKPT_HDR_NCKPT ;
 int CKPT_HDR_NLEVEL ;
 int CKPT_HDR_NWRITE ;
 int CKPT_HDR_PGSZ ;
 int CKPT_HDR_SIZE ;
 scalar_t__ LSM_COMPRESSION_EMPTY ;
 int LSM_OK ;
 int assert (int) ;
 int ckptAddChecksum (TYPE_9__*,int,int*) ;
 int ckptExportAppendlist (TYPE_5__*,TYPE_9__*,int*,int*) ;
 int ckptExportLevel (TYPE_7__*,TYPE_9__*,int*,int*) ;
 int ckptExportLog (TYPE_5__*,int,TYPE_9__*,int*,int*) ;
 int ckptSetValue (TYPE_9__*,int,int,int*) ;
 TYPE_7__* lsmDbSnapshotLevel (TYPE_6__*) ;
 int lsmFsBlockSize (int *) ;
 int lsmFsPageSize (int *) ;
 int lsmLogMessage (TYPE_5__*,int,char*,int,int) ;
 int memset (TYPE_9__*,int ,int) ;

__attribute__((used)) static int ckptExportSnapshot(
  lsm_db *pDb,
  int bLog,
  i64 iId,
  int bCksum,
  void **ppCkpt,
  int *pnCkpt
){
  int rc = LSM_OK;
  FileSystem *pFS = pDb->pFS;
  Snapshot *pSnap = pDb->pWorker;
  int nLevel = 0;
  int iLevel;
  int iOut = 0;
  Level *pLevel;
  int i;
  CkptBuffer ckpt;


  memset(&ckpt, 0, sizeof(CkptBuffer));
  ckpt.pEnv = pDb->pEnv;
  iOut = CKPT_HDR_SIZE;


  ckptExportLog(pDb, bLog, &ckpt, &iOut, &rc);


  ckptExportAppendlist(pDb, &ckpt, &iOut, &rc);


  for(pLevel=lsmDbSnapshotLevel(pSnap); pLevel; pLevel=pLevel->pNext) nLevel++;


  iLevel = 0;
  for(pLevel=lsmDbSnapshotLevel(pSnap); iLevel<nLevel; pLevel=pLevel->pNext){
    ckptExportLevel(pLevel, &ckpt, &iOut, &rc);
    iLevel++;
  }


  ckptSetValue(&ckpt, iOut++, pSnap->redirect.n, &rc);
  for(i=0; i<pSnap->redirect.n; i++){
    ckptSetValue(&ckpt, iOut++, pSnap->redirect.a[i].iFrom, &rc);
    ckptSetValue(&ckpt, iOut++, pSnap->redirect.a[i].iTo, &rc);
  }


  assert( pSnap->freelist.nEntry<=pDb->nMaxFreelist );
  if( rc==LSM_OK ){
    int nFree = pSnap->freelist.nEntry;
    ckptSetValue(&ckpt, iOut++, nFree, &rc);
    for(i=0; i<nFree; i++){
      FreelistEntry *p = &pSnap->freelist.aEntry[i];
      ckptSetValue(&ckpt, iOut++, p->iBlk, &rc);
      ckptSetValue(&ckpt, iOut++, (p->iId >> 32) & 0xFFFFFFFF, &rc);
      ckptSetValue(&ckpt, iOut++, p->iId & 0xFFFFFFFF, &rc);
    }
  }


  assert( iId>=0 );
  assert( pSnap->iCmpId==pDb->compress.iId
       || pSnap->iCmpId==LSM_COMPRESSION_EMPTY
  );
  ckptSetValue(&ckpt, CKPT_HDR_ID_MSW, (u32)(iId>>32), &rc);
  ckptSetValue(&ckpt, CKPT_HDR_ID_LSW, (u32)(iId&0xFFFFFFFF), &rc);
  ckptSetValue(&ckpt, CKPT_HDR_NCKPT, iOut+2, &rc);
  ckptSetValue(&ckpt, CKPT_HDR_CMPID, pDb->compress.iId, &rc);
  ckptSetValue(&ckpt, CKPT_HDR_NBLOCK, pSnap->nBlock, &rc);
  ckptSetValue(&ckpt, CKPT_HDR_BLKSZ, lsmFsBlockSize(pFS), &rc);
  ckptSetValue(&ckpt, CKPT_HDR_NLEVEL, nLevel, &rc);
  ckptSetValue(&ckpt, CKPT_HDR_PGSZ, lsmFsPageSize(pFS), &rc);
  ckptSetValue(&ckpt, CKPT_HDR_NWRITE, pSnap->nWrite, &rc);

  if( bCksum ){
    ckptAddChecksum(&ckpt, iOut, &rc);
  }else{
    ckptSetValue(&ckpt, iOut, 0, &rc);
    ckptSetValue(&ckpt, iOut+1, 0, &rc);
  }
  iOut += 2;
  assert( iOut<=1024 );
  *ppCkpt = (void *)ckpt.aCkpt;
  if( pnCkpt ) *pnCkpt = sizeof(u32)*iOut;
  return rc;
}
