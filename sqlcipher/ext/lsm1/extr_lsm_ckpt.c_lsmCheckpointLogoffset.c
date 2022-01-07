
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_5__ {int iSnapshotId; void* cksum1; void* cksum0; TYPE_1__* aRegion; } ;
struct TYPE_4__ {int iStart; } ;
typedef TYPE_2__ DbLog ;


 size_t CKPT_HDR_LO_CKSUM1 ;
 size_t CKPT_HDR_LO_CKSUM2 ;
 int lsmCheckpointId (void**,int ) ;
 int lsmCheckpointLogOffset (void**) ;

void lsmCheckpointLogoffset(
  u32 *aCkpt,
  DbLog *pLog
){
  pLog->aRegion[2].iStart = (lsmCheckpointLogOffset(aCkpt) >> 1);

  pLog->cksum0 = aCkpt[CKPT_HDR_LO_CKSUM1];
  pLog->cksum1 = aCkpt[CKPT_HDR_LO_CKSUM2];
  pLog->iSnapshotId = lsmCheckpointId(aCkpt, 0);
}
