
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int iTransId; scalar_t__ nByte; scalar_t__ nHeight; scalar_t__ iRoot; } ;
struct TYPE_10__ {int cksum1; int cksum0; TYPE_1__* aRegion; } ;
struct TYPE_11__ {scalar_t__ iOldShmid; int iOldLog; scalar_t__ iNextShmid; TYPE_6__ root; int oldroot; TYPE_3__ log; int oldcksum1; int oldcksum0; } ;
struct TYPE_12__ {scalar_t__ iReader; TYPE_4__ treehdr; TYPE_2__* pClient; } ;
typedef TYPE_5__ lsm_db ;
typedef int i64 ;
typedef int TreeRoot ;
struct TYPE_9__ {int iLogOff; } ;
struct TYPE_8__ {int iEnd; } ;


 int assert (int) ;
 int memcpy (int *,TYPE_6__*,int) ;

void lsmTreeMakeOld(lsm_db *pDb){







  assert( pDb->iReader>=0 );

  if( pDb->treehdr.iOldShmid==0 ){
    pDb->treehdr.iOldLog = (pDb->treehdr.log.aRegion[2].iEnd << 1);
    pDb->treehdr.iOldLog |= (~(pDb->pClient->iLogOff) & (i64)0x0001);

    pDb->treehdr.oldcksum0 = pDb->treehdr.log.cksum0;
    pDb->treehdr.oldcksum1 = pDb->treehdr.log.cksum1;
    pDb->treehdr.iOldShmid = pDb->treehdr.iNextShmid-1;
    memcpy(&pDb->treehdr.oldroot, &pDb->treehdr.root, sizeof(TreeRoot));

    pDb->treehdr.root.iTransId = 1;
    pDb->treehdr.root.iRoot = 0;
    pDb->treehdr.root.nHeight = 0;
    pDb->treehdr.root.nByte = 0;
  }
}
