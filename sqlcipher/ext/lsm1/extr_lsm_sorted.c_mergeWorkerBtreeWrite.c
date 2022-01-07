
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int pWorker; int pFS; int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_7__ {int nHier; int ** apHier; } ;
struct TYPE_6__ {int pLevel; TYPE_1__* pDb; TYPE_3__ hier; } ;
typedef int Page ;
typedef TYPE_2__ MergeWorker ;
typedef scalar_t__ LsmPgno ;
typedef TYPE_3__ Hierarchy ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 size_t SEGMENT_CELLPTR_OFFSET (int,int) ;
 int SEGMENT_EOF (int,int) ;
 size_t SEGMENT_FLAGS_OFFSET (int) ;
 size_t SEGMENT_NRECORD_OFFSET (int) ;
 size_t SEGMENT_POINTER_OFFSET (int) ;
 int assert (int) ;
 int* fsPageData (int *,int*) ;
 scalar_t__ lsmFsPageNumber (int *) ;
 int lsmFsPagePersist (int *) ;
 int lsmFsPageRelease (int *) ;
 int lsmFsPageWritable (int *) ;
 int lsmFsSortedAppend (int ,int ,int ,int,int **) ;
 int lsmPutU16 (int*,int ) ;
 int lsmPutU64 (int*,scalar_t__) ;
 scalar_t__ lsmRealloc (int ,int **,int) ;
 int lsmVarintLen32 (int) ;
 scalar_t__ lsmVarintPut32 (int*,int) ;
 int memcpy (int*,void*,int) ;
 int memset (int*,int ,int) ;
 int mergeWorkerPageOffset (int*,int) ;
 int pageGetNRec (int*,int) ;

__attribute__((used)) static int mergeWorkerBtreeWrite(
  MergeWorker *pMW,
  u8 eType,
  LsmPgno iPtr,
  LsmPgno iKeyPg,
  void *pKey,
  int nKey
){
  Hierarchy *p = &pMW->hier;
  lsm_db *pDb = pMW->pDb;
  int rc = LSM_OK;
  int iLevel;
  int nData;
  u8 *aData;
  int iOff;
  int nRec;



  assert( (eType==0)==(iKeyPg!=0) );
  for(iLevel=0; iLevel<=p->nHier; iLevel++){
    int nByte;

    if( iLevel==p->nHier ){

      Page **aNew;
      aNew = (Page **)lsmRealloc(
          pMW->pDb->pEnv, p->apHier, sizeof(Page *)*(p->nHier+1)
      );
      if( !aNew ){
        return LSM_NOMEM_BKPT;
      }
      p->apHier = aNew;
    }else{
      Page *pOld;
      int nFree;



      pOld = p->apHier[iLevel];
      assert( lsmFsPageWritable(pOld) );
      aData = fsPageData(pOld, &nData);
      if( eType==0 ){
        nByte = 2 + 1 + lsmVarintLen32((int)iPtr) + lsmVarintLen32((int)iKeyPg);
      }else{
        nByte = 2 + 1 + lsmVarintLen32((int)iPtr) + lsmVarintLen32(nKey) + nKey;
      }
      nRec = pageGetNRec(aData, nData);
      nFree = SEGMENT_EOF(nData, nRec) - mergeWorkerPageOffset(aData, nData);
      if( nByte<=nFree ) break;



      lsmPutU64(&aData[SEGMENT_POINTER_OFFSET(nData)], iPtr);
      assert( lsmFsPageNumber(pOld)==0 );
      rc = lsmFsPagePersist(pOld);
      if( rc==LSM_OK ){
        iPtr = lsmFsPageNumber(pOld);
        lsmFsPageRelease(pOld);
      }
    }


    p->apHier[iLevel] = 0;
    if( rc==LSM_OK ){
      rc = lsmFsSortedAppend(
          pDb->pFS, pDb->pWorker, pMW->pLevel, 1, &p->apHier[iLevel]
      );
    }
    if( rc!=LSM_OK ) return rc;

    aData = fsPageData(p->apHier[iLevel], &nData);
    memset(aData, 0, nData);
    lsmPutU16(&aData[SEGMENT_FLAGS_OFFSET(nData)], SEGMENT_BTREE_FLAG);
    lsmPutU16(&aData[SEGMENT_NRECORD_OFFSET(nData)], 0);

    if( iLevel==p->nHier ){
      p->nHier++;
      break;
    }
  }


  aData = fsPageData(p->apHier[iLevel], &nData);
  iOff = mergeWorkerPageOffset(aData, nData);
  nRec = pageGetNRec(aData, nData);
  lsmPutU16(&aData[SEGMENT_CELLPTR_OFFSET(nData, nRec)], (u16)iOff);
  lsmPutU16(&aData[SEGMENT_NRECORD_OFFSET(nData)], (u16)(nRec+1));
  if( eType==0 ){
    aData[iOff++] = 0x00;
    iOff += lsmVarintPut32(&aData[iOff], (int)iPtr);
    iOff += lsmVarintPut32(&aData[iOff], (int)iKeyPg);
  }else{
    aData[iOff++] = eType;
    iOff += lsmVarintPut32(&aData[iOff], (int)iPtr);
    iOff += lsmVarintPut32(&aData[iOff], nKey);
    memcpy(&aData[iOff], pKey, nKey);
  }

  return rc;
}
