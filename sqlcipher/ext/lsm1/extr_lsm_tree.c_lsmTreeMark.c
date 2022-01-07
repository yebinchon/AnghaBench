
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nHeight; int iRoot; } ;
struct TYPE_7__ {int iNextShmid; int nChunk; int iWrite; TYPE_2__ root; } ;
struct TYPE_9__ {int rollback; TYPE_1__ treehdr; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_10__ {int iRollback; int iNextShmid; int nChunk; int iWrite; int nHeight; int iRoot; } ;
typedef TYPE_4__ TreeMark ;


 int intArraySize (int *) ;

void lsmTreeMark(lsm_db *pDb, TreeMark *pMark){
  pMark->iRoot = pDb->treehdr.root.iRoot;
  pMark->nHeight = pDb->treehdr.root.nHeight;
  pMark->iWrite = pDb->treehdr.iWrite;
  pMark->nChunk = pDb->treehdr.nChunk;
  pMark->iNextShmid = pDb->treehdr.iNextShmid;
  pMark->iRollback = intArraySize(&pDb->rollback);
}
