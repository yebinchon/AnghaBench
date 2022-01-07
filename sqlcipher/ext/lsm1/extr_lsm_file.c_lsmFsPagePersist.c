
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


typedef int u8 ;
typedef size_t i64 ;
typedef int aSz ;
struct TYPE_19__ {int nPagesize; int nWrite; TYPE_1__* pMapped; int nCacheAlloc; int pEnv; scalar_t__ pMap; int fdDb; TYPE_1__* pWaiting; TYPE_1__** apHash; int nHash; int * aOBuffer; scalar_t__ pCompress; } ;
struct TYPE_18__ {int flags; int iPg; int nCompress; int nData; scalar_t__ pWaitingNext; struct TYPE_18__* pMappedNext; int * aData; int nRef; struct TYPE_18__* pHashNext; TYPE_14__* pSeg; TYPE_2__* pFS; } ;
struct TYPE_17__ {int iFirst; int nSize; } ;
typedef TYPE_1__ Page ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int PAGE_DIRTY ;
 int PAGE_FREE ;
 int PAGE_HASPREV ;
 int assert (int) ;
 int fsAppendData (TYPE_2__*,TYPE_14__*,int *,int,int*) ;
 int fsAppendPage (TYPE_2__*,TYPE_14__*,int*,int*,int*) ;
 int fsCompressIntoBuffer (TYPE_2__*,TYPE_1__*) ;
 int fsGrowMapping (TYPE_2__*,int,int*) ;
 int fsHashKey (int ,int) ;
 scalar_t__ fsMmapPage (TYPE_2__*,int) ;
 int fsPageRemoveFromHash (TYPE_2__*,TYPE_1__*) ;
 int fsRemoveHashEntry (TYPE_2__*,int) ;
 int lsmEnvWrite (int ,int ,size_t,int *,int) ;
 int lsmFree (int ,int *) ;
 int lsmFsFlushWaiting (TYPE_2__*,int*) ;
 int lsmPutU32 (int *,int) ;
 int lsmSortedExpandBtreePage (TYPE_1__*,int) ;
 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,int) ;
 int putRecordSize (int *,int,int ) ;

int lsmFsPagePersist(Page *pPg){
  int rc = LSM_OK;
  if( pPg && (pPg->flags & PAGE_DIRTY) ){
    FileSystem *pFS = pPg->pFS;

    if( pFS->pCompress ){
      int iHash;
      u8 aSz[3];
      assert( pPg->pSeg && pPg->iPg==0 && pPg->nCompress==0 );


      rc = fsCompressIntoBuffer(pFS, pPg);


      putRecordSize(aSz, pPg->nCompress, 0);


      pPg->iPg = fsAppendData(pFS, pPg->pSeg, aSz, sizeof(aSz), &rc);
      fsAppendData(pFS, pPg->pSeg, pFS->aOBuffer, pPg->nCompress, &rc);
      fsAppendData(pFS, pPg->pSeg, aSz, sizeof(aSz), &rc);


      iHash = fsHashKey(pFS->nHash, pPg->iPg);
      pPg->pHashNext = pFS->apHash[iHash];
      pFS->apHash[iHash] = pPg;

      pPg->pSeg->nSize += (sizeof(aSz) * 2) + pPg->nCompress;

      pPg->flags &= ~PAGE_DIRTY;
      pFS->nWrite++;
    }else{

      if( pPg->iPg==0 ){







        Page **pp;
        int iPrev = 0;
        int iNext = 0;
        int iHash;

        assert( pPg->pSeg->iFirst );
        assert( pPg->flags & PAGE_FREE );
        assert( (pPg->flags & PAGE_HASPREV)==0 );
        assert( pPg->nData==pFS->nPagesize-4 );

        rc = fsAppendPage(pFS, pPg->pSeg, &pPg->iPg, &iPrev, &iNext);
        if( rc!=LSM_OK ) return rc;

        assert( pPg->flags & PAGE_FREE );
        iHash = fsHashKey(pFS->nHash, pPg->iPg);
        fsRemoveHashEntry(pFS, pPg->iPg);
        pPg->pHashNext = pFS->apHash[iHash];
        pFS->apHash[iHash] = pPg;
        assert( pPg->pHashNext==0 || pPg->pHashNext->iPg!=pPg->iPg );

        if( iPrev ){
          assert( iNext==0 );
          memmove(&pPg->aData[4], pPg->aData, pPg->nData);
          lsmPutU32(pPg->aData, iPrev);
          pPg->flags |= PAGE_HASPREV;
          pPg->aData += 4;
        }else if( iNext ){
          assert( iPrev==0 );
          lsmPutU32(&pPg->aData[pPg->nData], iNext);
        }else{
          int nData = pPg->nData;
          pPg->nData += 4;
          lsmSortedExpandBtreePage(pPg, nData);
        }

        pPg->nRef++;
        for(pp=&pFS->pWaiting; *pp; pp=&(*pp)->pWaitingNext);
        *pp = pPg;
        assert( pPg->pWaitingNext==0 );

      }else{
        i64 iOff;

        iOff = (i64)pFS->nPagesize * (i64)(pPg->iPg-1);
        if( fsMmapPage(pFS, pPg->iPg)==0 ){
          u8 *aData = pPg->aData - (pPg->flags & PAGE_HASPREV);
          rc = lsmEnvWrite(pFS->pEnv, pFS->fdDb, iOff, aData, pFS->nPagesize);
        }else if( pPg->flags & PAGE_FREE ){
          fsGrowMapping(pFS, iOff + pFS->nPagesize, &rc);
          if( rc==LSM_OK ){
            u8 *aTo = &((u8 *)(pFS->pMap))[iOff];
            u8 *aFrom = pPg->aData - (pPg->flags & PAGE_HASPREV);
            memcpy(aTo, aFrom, pFS->nPagesize);
            lsmFree(pFS->pEnv, aFrom);
            pFS->nCacheAlloc--;
            pPg->aData = aTo + (pPg->flags & PAGE_HASPREV);
            pPg->flags &= ~PAGE_FREE;
            fsPageRemoveFromHash(pFS, pPg);
            pPg->pMappedNext = pFS->pMapped;
            pFS->pMapped = pPg;
          }
        }

        lsmFsFlushWaiting(pFS, &rc);
        pPg->flags &= ~PAGE_DIRTY;
        pFS->nWrite++;
      }
    }
  }

  return rc;
}
