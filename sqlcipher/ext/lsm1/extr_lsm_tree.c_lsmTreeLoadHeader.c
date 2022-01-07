
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int treehdr; TYPE_2__* pShmhdr; } ;
typedef TYPE_1__ lsm_db ;
typedef int TreeHeader ;
struct TYPE_6__ {int hdr2; int hdr1; } ;
typedef TYPE_2__ ShmHeader ;


 int LSM_ATTEMPTS_BEFORE_PROTOCOL ;
 int LSM_OK ;
 int LSM_PROTOCOL_BKPT ;
 int lsmShmBarrier (TYPE_1__*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ treeHeaderChecksumOk (int *) ;

int lsmTreeLoadHeader(lsm_db *pDb, int *piRead){
  int nRem = LSM_ATTEMPTS_BEFORE_PROTOCOL;
  while( (nRem--)>0 ){
    ShmHeader *pShm = pDb->pShmhdr;

    memcpy(&pDb->treehdr, &pShm->hdr1, sizeof(TreeHeader));
    if( treeHeaderChecksumOk(&pDb->treehdr) ){
      if( piRead ) *piRead = 1;
      return LSM_OK;
    }
    memcpy(&pDb->treehdr, &pShm->hdr2, sizeof(TreeHeader));
    if( treeHeaderChecksumOk(&pDb->treehdr) ){
      if( piRead ) *piRead = 2;
      return LSM_OK;
    }

    lsmShmBarrier(pDb);
  }
  return LSM_PROTOCOL_BKPT;
}
