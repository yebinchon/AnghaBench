
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_9__ {TYPE_2__* aSave; scalar_t__ iIndirect; TYPE_1__* pDb; } ;
struct TYPE_8__ {int bStore; scalar_t__ iPgno; } ;
struct TYPE_7__ {int pFS; } ;
typedef TYPE_3__ MergeWorker ;
typedef scalar_t__ LsmPgno ;


 int LSM_OK ;
 int LSM_SEPARATOR ;
 int assert (int) ;
 int lsmFsPageSize (int ) ;
 int mergeWorkerBtreeIndirect (TYPE_3__*) ;
 int mergeWorkerBtreeWrite (TYPE_3__*,int ,scalar_t__,int ,void*,int) ;

__attribute__((used)) static int mergeWorkerPushHierarchy(
  MergeWorker *pMW,
  int iTopic,
  void *pKey,
  int nKey
){
  int rc = LSM_OK;
  LsmPgno iPtr;

  assert( pMW->aSave[0].bStore==0 );
  assert( pMW->aSave[1].bStore==0 );
  rc = mergeWorkerBtreeIndirect(pMW);




  iPtr = pMW->aSave[0].iPgno;
  assert( iPtr!=0 );


  if( (nKey*4 > lsmFsPageSize(pMW->pDb->pFS)) ){
    pMW->iIndirect = iPtr;
    pMW->aSave[1].bStore = 1;
  }else{
    rc = mergeWorkerBtreeWrite(
        pMW, (u8)(iTopic | LSM_SEPARATOR), iPtr, 0, pKey, nKey
    );
  }


  return rc;
}
