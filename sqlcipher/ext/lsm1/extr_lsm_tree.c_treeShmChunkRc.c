
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nShm; scalar_t__* apShm; } ;
typedef TYPE_1__ lsm_db ;
typedef int ShmChunk ;


 int LSM_OK ;
 int assert (int) ;
 int lsmShmCacheChunks (TYPE_1__*,int) ;

__attribute__((used)) static ShmChunk * treeShmChunkRc(lsm_db *pDb, int iChunk, int *pRc){
  assert( *pRc==LSM_OK );
  if( iChunk<pDb->nShm || LSM_OK==(*pRc = lsmShmCacheChunks(pDb, iChunk+1)) ){
    return (ShmChunk *)(pDb->apShm[iChunk]);
  }
  return 0;
}
