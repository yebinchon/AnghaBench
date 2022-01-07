
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ i64 ;
struct TYPE_13__ {scalar_t__ nBlocksize; scalar_t__ nMapLimit; int nPagesize; int pEnv; int fdDb; scalar_t__ pMap; TYPE_1__* pDb; } ;
struct TYPE_12__ {int iRoot; int iLastPg; int iFirst; } ;
struct TYPE_11__ {int * aiAppend; } ;
struct TYPE_10__ {TYPE_2__* pWorker; } ;
typedef TYPE_2__ Snapshot ;
typedef TYPE_3__ Segment ;
typedef TYPE_4__ FileSystem ;


 int LSM_APPLIST_SZ ;
 scalar_t__ LSM_MIN (scalar_t__,scalar_t__) ;
 int LSM_OK ;
 int assert (int) ;
 int fsGrowMapping (TYPE_4__*,scalar_t__,int*) ;
 int fsMovePage (TYPE_4__*,int,int,int *) ;
 int lsmEnvRead (int ,int ,scalar_t__,int *,int) ;
 int lsmEnvWrite (int ,int ,scalar_t__,int *,int) ;
 int lsmFree (int ,int *) ;
 int lsmFsPurgeCache (TYPE_4__*) ;
 scalar_t__ lsmMallocRc (int ,int,int*) ;
 int memcpy (int *,int *,int) ;

int lsmFsMoveBlock(FileSystem *pFS, Segment *pSeg, int iTo, int iFrom){
  Snapshot *p = pFS->pDb->pWorker;
  int rc = LSM_OK;
  int i;
  i64 nMap;

  i64 iFromOff = (i64)(iFrom-1) * pFS->nBlocksize;
  i64 iToOff = (i64)(iTo-1) * pFS->nBlocksize;

  assert( iTo!=1 );
  assert( iFrom>iTo );


  nMap = LSM_MIN(pFS->nMapLimit, (i64)iFrom * pFS->nBlocksize);
  fsGrowMapping(pFS, nMap, &rc);

  if( rc==LSM_OK ){
    const int nPagePerBlock = (pFS->nBlocksize / pFS->nPagesize);
    int nSz = pFS->nPagesize;
    u8 *aBuf = 0;
    u8 *aData = 0;

    for(i=0; rc==LSM_OK && i<nPagePerBlock; i++){
      i64 iOff = iFromOff + i*nSz;


      if( (iOff+nSz)<=pFS->nMapLimit ){
        u8 *aMap = (u8 *)(pFS->pMap);
        aData = &aMap[iOff];
      }else{
        if( aBuf==0 ){
          aBuf = (u8 *)lsmMallocRc(pFS->pEnv, nSz, &rc);
          if( aBuf==0 ) break;
        }
        aData = aBuf;
        rc = lsmEnvRead(pFS->pEnv, pFS->fdDb, iOff, aData, nSz);
      }


      if( rc==LSM_OK ){
        iOff = iToOff + i*nSz;
        if( (iOff+nSz)<=pFS->nMapLimit ){
          u8 *aMap = (u8 *)(pFS->pMap);
          memcpy(&aMap[iOff], aData, nSz);
        }else{
          rc = lsmEnvWrite(pFS->pEnv, pFS->fdDb, iOff, aData, nSz);
        }
      }
    }
    lsmFree(pFS->pEnv, aBuf);
    lsmFsPurgeCache(pFS);
  }


  for(i=0; i<LSM_APPLIST_SZ; i++){
    fsMovePage(pFS, iTo, iFrom, &p->aiAppend[i]);
  }


  fsMovePage(pFS, iTo, iFrom, &pSeg->iFirst);
  fsMovePage(pFS, iTo, iFrom, &pSeg->iLastPg);
  fsMovePage(pFS, iTo, iFrom, &pSeg->iRoot);

  return rc;
}
