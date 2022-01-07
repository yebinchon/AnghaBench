
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pShmhdr; TYPE_1__* pClient; int aSnapshot; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_6__ {int aSnap2; int aSnap1; } ;
struct TYPE_5__ {scalar_t__ iId; } ;


 scalar_t__ lsmCheckpointId (int ,int ) ;

int lsmCheckpointClientCacheOk(lsm_db *pDb){
  return ( pDb->pClient
        && pDb->pClient->iId==lsmCheckpointId(pDb->aSnapshot, 0)
        && pDb->pClient->iId==lsmCheckpointId(pDb->pShmhdr->aSnap1, 0)
        && pDb->pClient->iId==lsmCheckpointId(pDb->pShmhdr->aSnap2, 0)
  );
}
