
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ iIndirect; TYPE_1__* aSave; } ;
struct TYPE_5__ {int iPgno; } ;
typedef TYPE_2__ MergeWorker ;
typedef int LsmPgno ;


 int LSM_OK ;
 int mergeWorkerBtreeWrite (TYPE_2__*,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int mergeWorkerBtreeIndirect(MergeWorker *pMW){
  int rc = LSM_OK;
  if( pMW->iIndirect ){
    LsmPgno iKeyPg = pMW->aSave[1].iPgno;
    rc = mergeWorkerBtreeWrite(pMW, 0, pMW->iIndirect, iKeyPg, 0, 0);
    pMW->iIndirect = 0;
  }
  return rc;
}
