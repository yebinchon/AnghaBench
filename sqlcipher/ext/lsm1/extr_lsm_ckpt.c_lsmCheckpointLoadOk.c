
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int * aSnapshot; TYPE_1__* pShmhdr; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_4__ {int * aSnap2; int * aSnap1; } ;


 int assert (int) ;
 scalar_t__ lsmCheckpointId (int *,int ) ;

int lsmCheckpointLoadOk(lsm_db *pDb, int iSnap){
  u32 *aShm;
  assert( iSnap==1 || iSnap==2 );
  aShm = (iSnap==1) ? pDb->pShmhdr->aSnap1 : pDb->pShmhdr->aSnap2;
  return (lsmCheckpointId(pDb->aSnapshot, 0)==lsmCheckpointId(aShm, 0) );
}
