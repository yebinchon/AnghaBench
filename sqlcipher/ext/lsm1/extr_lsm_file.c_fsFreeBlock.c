
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int pDb; } ;
struct TYPE_12__ {struct TYPE_12__* pNext; } ;
struct TYPE_11__ {scalar_t__* aiAppend; } ;
typedef TYPE_1__ Snapshot ;
typedef int Segment ;
typedef scalar_t__ LsmPgno ;
typedef TYPE_2__ Level ;
typedef TYPE_3__ FileSystem ;


 int LSM_APPLIST_SZ ;
 int LSM_OK ;
 scalar_t__ fsFirstPageOnBlock (TYPE_3__*,int) ;
 scalar_t__ fsLastPageOnBlock (TYPE_3__*,int) ;
 scalar_t__ fsLevelEndsBetween (TYPE_2__*,int *,scalar_t__,scalar_t__) ;
 int lsmBlockFree (int ,int) ;
 TYPE_2__* lsmDbSnapshotLevel (TYPE_1__*) ;

__attribute__((used)) static int fsFreeBlock(
  FileSystem *pFS,
  Snapshot *pSnapshot,
  Segment *pIgnore,
  int iBlk
){
  int rc = LSM_OK;
  LsmPgno iFirst;
  LsmPgno iLast;
  Level *pLevel;

  int iIn;
  int iOut = 0;
  LsmPgno *aApp = pSnapshot->aiAppend;

  iFirst = fsFirstPageOnBlock(pFS, iBlk);
  iLast = fsLastPageOnBlock(pFS, iBlk);



  for(pLevel=lsmDbSnapshotLevel(pSnapshot); pLevel; pLevel=pLevel->pNext){
    if( fsLevelEndsBetween(pLevel, pIgnore, iFirst, iLast) ){
      return LSM_OK;
    }
  }


  for(iIn=0; iIn<LSM_APPLIST_SZ; iIn++){
    if( aApp[iIn]<iFirst || aApp[iIn]>iLast ){
      aApp[iOut++] = aApp[iIn];
    }
  }
  while( iOut<LSM_APPLIST_SZ ) aApp[iOut++] = 0;

  if( rc==LSM_OK ){
    rc = lsmBlockFree(pFS->pDb, iBlk);
  }
  return rc;
}
