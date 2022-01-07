
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* apShm; } ;
typedef TYPE_1__ lsm_db ;
typedef int ShmChunk ;



__attribute__((used)) static ShmChunk * treeShmChunk(lsm_db *pDb, int iChunk){
  return (ShmChunk *)(pDb->apShm[iChunk]);
}
