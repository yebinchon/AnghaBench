
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int nDfltBlksz; int nDfltPgsz; int aSnapshot; TYPE_2__* pShmhdr; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_5__ {int aSnap2; int aSnap1; } ;
typedef TYPE_2__ ShmHeader ;


 size_t CKPT_HDR_BLKSZ ;
 size_t CKPT_HDR_NCKPT ;
 size_t CKPT_HDR_PGSZ ;
 int LSM_COMPRESSION_EMPTY ;
 int array_size (int*) ;
 int ckptChecksum (int*,int,int*,int*) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static void ckptLoadEmpty(lsm_db *pDb){
  u32 aCkpt[] = {
    0,
    10,
    0,
    LSM_COMPRESSION_EMPTY,
    0,
    0,
    0,
    0,
    0,
    0, 0, 1234, 5678,
    0,0,0,0, 0,0,0,0,
    0,
    0,
    0, 0
  };
  u32 nCkpt = array_size(aCkpt);
  ShmHeader *pShm = pDb->pShmhdr;

  aCkpt[CKPT_HDR_NCKPT] = nCkpt;
  aCkpt[CKPT_HDR_BLKSZ] = pDb->nDfltBlksz;
  aCkpt[CKPT_HDR_PGSZ] = pDb->nDfltPgsz;
  ckptChecksum(aCkpt, array_size(aCkpt), &aCkpt[nCkpt-2], &aCkpt[nCkpt-1]);

  memcpy(pShm->aSnap1, aCkpt, nCkpt*sizeof(u32));
  memcpy(pShm->aSnap2, aCkpt, nCkpt*sizeof(u32));
  memcpy(pDb->aSnapshot, aCkpt, nCkpt*sizeof(u32));
}
