
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_1__* pShmhdr; } ;
typedef TYPE_2__ lsm_db ;
typedef int i64 ;
struct TYPE_5__ {int* aSnap1; } ;


 size_t CKPT_HDR_NWRITE ;
 size_t CKPT_HDR_PGSZ ;
 int LSM_OK ;
 int lsmCheckpointSynced (TYPE_2__*,int ,int ,int*) ;

int lsmCheckpointSize(lsm_db *db, int *pnKB){
  int rc = LSM_OK;
  u32 nSynced;



  rc = lsmCheckpointSynced(db, 0, 0, &nSynced);

  if( rc==LSM_OK ){
    u32 nPgsz = db->pShmhdr->aSnap1[CKPT_HDR_PGSZ];
    u32 nWrite = db->pShmhdr->aSnap1[CKPT_HDR_NWRITE];
    *pnKB = (int)(( ((i64)(nWrite - nSynced) * nPgsz) + 1023) / 1024);
  }

  return rc;
}
