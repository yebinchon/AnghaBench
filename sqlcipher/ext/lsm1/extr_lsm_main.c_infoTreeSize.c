
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__* pShmhdr; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_8__ {scalar_t__ nByte; } ;
struct TYPE_7__ {scalar_t__ nByte; } ;
struct TYPE_10__ {scalar_t__ iOldLog; TYPE_2__ oldroot; scalar_t__ iOldShmid; TYPE_1__ root; } ;
typedef TYPE_4__ TreeHeader ;
struct TYPE_11__ {int aSnap1; TYPE_4__ hdr1; } ;
typedef TYPE_5__ ShmHeader ;


 int LSM_OK ;
 scalar_t__ lsmCheckpointLogOffset (int ) ;

__attribute__((used)) static int infoTreeSize(lsm_db *db, int *pnOldKB, int *pnNewKB){
  ShmHeader *pShm = db->pShmhdr;
  TreeHeader *p = &pShm->hdr1;
  *pnNewKB = ((int)p->root.nByte + 1023) / 1024;
  if( p->iOldShmid ){
    if( p->iOldLog==lsmCheckpointLogOffset(pShm->aSnap1) ){
      *pnOldKB = 0;
    }else{
      *pnOldKB = ((int)p->oldroot.nByte + 1023) / 1024;
    }
  }else{
    *pnOldKB = 0;
  }

  return LSM_OK;
}
