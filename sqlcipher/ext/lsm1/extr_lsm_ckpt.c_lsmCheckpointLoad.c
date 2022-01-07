
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int aSnapshot; TYPE_2__* pShmhdr; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_6__ {int* aSnap1; int* aSnap2; } ;
typedef TYPE_2__ ShmHeader ;


 size_t CKPT_HDR_NCKPT ;
 int LSM_ATTEMPTS_BEFORE_PROTOCOL ;
 int LSM_META_RW_PAGE_SIZE ;
 int LSM_OK ;
 int LSM_PROTOCOL_BKPT ;
 scalar_t__ ckptChecksumOk (int ) ;
 int lsmShmBarrier (TYPE_1__*) ;
 int memcpy (int ,int*,int) ;

int lsmCheckpointLoad(lsm_db *pDb, int *piRead){
  int nRem = LSM_ATTEMPTS_BEFORE_PROTOCOL;
  ShmHeader *pShm = pDb->pShmhdr;
  while( (nRem--)>0 ){
    int nInt;

    nInt = pShm->aSnap1[CKPT_HDR_NCKPT];
    if( nInt<=(LSM_META_RW_PAGE_SIZE / sizeof(u32)) ){
      memcpy(pDb->aSnapshot, pShm->aSnap1, nInt*sizeof(u32));
      if( ckptChecksumOk(pDb->aSnapshot) ){
        if( piRead ) *piRead = 1;
        return LSM_OK;
      }
    }

    nInt = pShm->aSnap2[CKPT_HDR_NCKPT];
    if( nInt<=(LSM_META_RW_PAGE_SIZE / sizeof(u32)) ){
      memcpy(pDb->aSnapshot, pShm->aSnap2, nInt*sizeof(u32));
      if( ckptChecksumOk(pDb->aSnapshot) ){
        if( piRead ) *piRead = 2;
        return LSM_OK;
      }
    }

    lsmShmBarrier(pDb);
  }
  return LSM_PROTOCOL_BKPT;
}
