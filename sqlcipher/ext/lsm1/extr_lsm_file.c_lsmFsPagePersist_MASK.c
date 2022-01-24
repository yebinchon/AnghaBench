#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t i64 ;
typedef  int /*<<< orphan*/  aSz ;
struct TYPE_19__ {int nPagesize; int /*<<< orphan*/  nWrite; TYPE_1__* pMapped; int /*<<< orphan*/  nCacheAlloc; int /*<<< orphan*/  pEnv; scalar_t__ pMap; int /*<<< orphan*/  fdDb; TYPE_1__* pWaiting; TYPE_1__** apHash; int /*<<< orphan*/  nHash; int /*<<< orphan*/ * aOBuffer; scalar_t__ pCompress; } ;
struct TYPE_18__ {int flags; int iPg; int nCompress; int nData; scalar_t__ pWaitingNext; struct TYPE_18__* pMappedNext; int /*<<< orphan*/ * aData; int /*<<< orphan*/  nRef; struct TYPE_18__* pHashNext; TYPE_14__* pSeg; TYPE_2__* pFS; } ;
struct TYPE_17__ {int iFirst; int /*<<< orphan*/  nSize; } ;
typedef  TYPE_1__ Page ;
typedef  TYPE_2__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int PAGE_DIRTY ; 
 int PAGE_FREE ; 
 int PAGE_HASPREV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,TYPE_14__*,int /*<<< orphan*/ *,int,int*) ; 
 int FUNC2 (TYPE_2__*,TYPE_14__*,int*,int*,int*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC17(Page *pPg){
  int rc = LSM_OK;
  if( pPg && (pPg->flags & PAGE_DIRTY) ){
    FileSystem *pFS = pPg->pFS;

    if( pFS->pCompress ){
      int iHash;                  /* Hash key of assigned page number */
      u8 aSz[3];                  /* pPg->nCompress as a 24-bit big-endian */
      FUNC0( pPg->pSeg && pPg->iPg==0 && pPg->nCompress==0 );

      /* Compress the page image. */
      rc = FUNC3(pFS, pPg);

      /* Serialize the compressed size into buffer aSz[] */
      FUNC16(aSz, pPg->nCompress, 0);

      /* Write the serialized page record into the database file. */
      pPg->iPg = FUNC1(pFS, pPg->pSeg, aSz, sizeof(aSz), &rc);
      FUNC1(pFS, pPg->pSeg, pFS->aOBuffer, pPg->nCompress, &rc);
      FUNC1(pFS, pPg->pSeg, aSz, sizeof(aSz), &rc);

      /* Now that it has a page number, insert the page into the hash table */
      iHash = FUNC5(pFS->nHash, pPg->iPg);
      pPg->pHashNext = pFS->apHash[iHash];
      pFS->apHash[iHash] = pPg;

      pPg->pSeg->nSize += (sizeof(aSz) * 2) + pPg->nCompress;

      pPg->flags &= ~PAGE_DIRTY;
      pFS->nWrite++;
    }else{

      if( pPg->iPg==0 ){
        /* No page number has been assigned yet. This occurs with pages used
        ** in the b-tree hierarchy. They were not assigned page numbers when
        ** they were created as doing so would cause this call to
        ** lsmFsPagePersist() to write an out-of-order page. Instead a page 
        ** number is assigned here so that the page data will be appended
        ** to the current segment.
        */
        Page **pp;
        int iPrev = 0;
        int iNext = 0;
        int iHash;

        FUNC0( pPg->pSeg->iFirst );
        FUNC0( pPg->flags & PAGE_FREE );
        FUNC0( (pPg->flags & PAGE_HASPREV)==0 );
        FUNC0( pPg->nData==pFS->nPagesize-4 );

        rc = FUNC2(pFS, pPg->pSeg, &pPg->iPg, &iPrev, &iNext);
        if( rc!=LSM_OK ) return rc;

        FUNC0( pPg->flags & PAGE_FREE );
        iHash = FUNC5(pFS->nHash, pPg->iPg);
        FUNC8(pFS, pPg->iPg);
        pPg->pHashNext = pFS->apHash[iHash];
        pFS->apHash[iHash] = pPg;
        FUNC0( pPg->pHashNext==0 || pPg->pHashNext->iPg!=pPg->iPg );

        if( iPrev ){
          FUNC0( iNext==0 );
          FUNC15(&pPg->aData[4], pPg->aData, pPg->nData);
          FUNC12(pPg->aData, iPrev);
          pPg->flags |= PAGE_HASPREV;
          pPg->aData += 4;
        }else if( iNext ){
          FUNC0( iPrev==0 );
          FUNC12(&pPg->aData[pPg->nData], iNext);
        }else{
          int nData = pPg->nData;
          pPg->nData += 4;
          FUNC13(pPg, nData);
        }

        pPg->nRef++;
        for(pp=&pFS->pWaiting; *pp; pp=&(*pp)->pWaitingNext);
        *pp = pPg;
        FUNC0( pPg->pWaitingNext==0 );

      }else{
        i64 iOff;                   /* Offset to write within database file */

        iOff = (i64)pFS->nPagesize * (i64)(pPg->iPg-1);
        if( FUNC6(pFS, pPg->iPg)==0 ){
          u8 *aData = pPg->aData - (pPg->flags & PAGE_HASPREV);
          rc = FUNC9(pFS->pEnv, pFS->fdDb, iOff, aData, pFS->nPagesize);
        }else if( pPg->flags & PAGE_FREE ){
          FUNC4(pFS, iOff + pFS->nPagesize, &rc);
          if( rc==LSM_OK ){
            u8 *aTo = &((u8 *)(pFS->pMap))[iOff];
            u8 *aFrom = pPg->aData - (pPg->flags & PAGE_HASPREV);
            FUNC14(aTo, aFrom, pFS->nPagesize);
            FUNC10(pFS->pEnv, aFrom);
            pFS->nCacheAlloc--;
            pPg->aData = aTo + (pPg->flags & PAGE_HASPREV);
            pPg->flags &= ~PAGE_FREE;
            FUNC7(pFS, pPg);
            pPg->pMappedNext = pFS->pMapped;
            pFS->pMapped = pPg;
          }
        }

        FUNC11(pFS, &rc);
        pPg->flags &= ~PAGE_DIRTY;
        pFS->nWrite++;
      }
    }
  }

  return rc;
}