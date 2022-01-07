
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {TYPE_1__* pShmhdr; int pEnv; int pFS; } ;
typedef TYPE_2__ lsm_db ;
typedef int i64 ;
struct TYPE_4__ {int iMetaPage; } ;
typedef int MetaPage ;


 int CKPT_HDR_NCKPT ;
 size_t CKPT_HDR_NWRITE ;
 int LSM_META_RW_PAGE_SIZE ;
 int LSM_OK ;
 int assert (int) ;
 int ckptChangeEndianness (int*,int) ;
 scalar_t__ ckptChecksumOk (int*) ;
 int lsmCheckpointId (int*,int ) ;
 int lsmCheckpointLogOffset (int*) ;
 int lsmFree (int ,int*) ;
 int * lsmFsMetaPageData (int *,int*) ;
 int lsmFsMetaPageGet (int ,int ,int,int **) ;
 int lsmFsMetaPageRelease (int *) ;
 int lsmGetU32 (int *) ;
 int* lsmMallocRc (int ,int,int*) ;
 int memcpy (int*,int *,int) ;

int lsmCheckpointSynced(lsm_db *pDb, i64 *piId, i64 *piLog, u32 *pnWrite){
  int rc = LSM_OK;
  MetaPage *pPg;
  u32 iMeta;

  iMeta = pDb->pShmhdr->iMetaPage;
  if( iMeta==1 || iMeta==2 ){
    rc = lsmFsMetaPageGet(pDb->pFS, 0, iMeta, &pPg);
    if( rc==LSM_OK ){
      int nCkpt;
      int nData;
      u8 *aData;

      aData = lsmFsMetaPageData(pPg, &nData);
      assert( nData==LSM_META_RW_PAGE_SIZE );
      nCkpt = lsmGetU32(&aData[CKPT_HDR_NCKPT*sizeof(u32)]);
      if( nCkpt<(LSM_META_RW_PAGE_SIZE/sizeof(u32)) ){
        u32 *aCopy = lsmMallocRc(pDb->pEnv, sizeof(u32) * nCkpt, &rc);
        if( aCopy ){
          memcpy(aCopy, aData, nCkpt*sizeof(u32));
          ckptChangeEndianness(aCopy, nCkpt);
          if( ckptChecksumOk(aCopy) ){
            if( piId ) *piId = lsmCheckpointId(aCopy, 0);
            if( piLog ) *piLog = (lsmCheckpointLogOffset(aCopy) >> 1);
            if( pnWrite ) *pnWrite = aCopy[CKPT_HDR_NWRITE];
          }
          lsmFree(pDb->pEnv, aCopy);
        }
      }
      lsmFsMetaPageRelease(pPg);
    }
  }

  if( (iMeta!=1 && iMeta!=2) || rc!=LSM_OK || pDb->pShmhdr->iMetaPage!=iMeta ){
    if( piId ) *piId = 0;
    if( piLog ) *piLog = 0;
    if( pnWrite ) *pnWrite = 0;
  }
  return rc;
}
