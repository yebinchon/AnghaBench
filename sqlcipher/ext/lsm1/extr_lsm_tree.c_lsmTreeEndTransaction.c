
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int aCksum; } ;
struct TYPE_7__ {int rollback; int pEnv; TYPE_3__ treehdr; TYPE_2__* pShmhdr; } ;
typedef TYPE_1__ lsm_db ;
typedef int TreeHeader ;
struct TYPE_8__ {scalar_t__ bWriter; int hdr1; int hdr2; } ;
typedef TYPE_2__ ShmHeader ;


 int LSM_OK ;
 int intArrayFree (int ,int *) ;
 int lsmShmBarrier (TYPE_1__*) ;
 int memcpy (int *,TYPE_3__*,int) ;
 int treeHeaderChecksum (TYPE_3__*,int ) ;

int lsmTreeEndTransaction(lsm_db *pDb, int bCommit){
  ShmHeader *pShm = pDb->pShmhdr;

  treeHeaderChecksum(&pDb->treehdr, pDb->treehdr.aCksum);
  memcpy(&pShm->hdr2, &pDb->treehdr, sizeof(TreeHeader));
  lsmShmBarrier(pDb);
  memcpy(&pShm->hdr1, &pDb->treehdr, sizeof(TreeHeader));
  pShm->bWriter = 0;
  intArrayFree(pDb->pEnv, &pDb->rollback);

  return LSM_OK;
}
