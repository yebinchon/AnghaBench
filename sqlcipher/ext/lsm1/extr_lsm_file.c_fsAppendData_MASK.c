#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
typedef  int /*<<< orphan*/  aPtr ;
struct TYPE_11__ {int pCompress; int nBlocksize; int /*<<< orphan*/  fdDb; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  pDb; } ;
struct TYPE_10__ {int iLastPg; int iFirst; scalar_t__ pRedirect; } ;
typedef  TYPE_1__ Segment ;
typedef  int LsmPgno ;
typedef  TYPE_2__ FileSystem ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static LsmPgno FUNC10(
  FileSystem *pFS,                /* File-system handle */
  Segment *pSeg,                  /* Segment to append to */
  const u8 *aData,                /* Buffer containing data to write */
  int nData,                      /* Size of buffer aData[] in bytes */
  int *pRc                        /* IN/OUT: Error code */
){
  LsmPgno iRet = 0;
  int rc = *pRc;
  FUNC1( pFS->pCompress );
  if( rc==LSM_OK ){
    int nRem = 0;
    int nWrite = 0;
    LsmPgno iLastOnBlock;
    LsmPgno iApp = pSeg->iLastPg+1;

    /* If this is the first data written into the segment, find an append-point
    ** or allocate a new block.  */
    if( iApp==1 ){
      pSeg->iFirst = iApp = FUNC2(pFS, 0);
      if( iApp==0 ){
        int iBlk;
        rc = FUNC7(pFS->pDb, 0, &iBlk);
        pSeg->iFirst = iApp = FUNC4(pFS, iBlk);
      }
    }
    iRet = iApp;

    /* Write as much data as is possible at iApp (usually all of it). */
    iLastOnBlock = FUNC5(pFS, iApp);
    if( rc==LSM_OK ){
      int nSpace = (int)(iLastOnBlock - iApp + 1);
      nWrite = FUNC0(nData, nSpace);
      nRem = nData - nWrite;
      FUNC1( nWrite>=0 );
      if( nWrite!=0 ){
        rc = FUNC8(pFS->pEnv, pFS->fdDb, iApp, aData, nWrite);
      }
      iApp += nWrite;
    }

    /* If required, allocate a new block and write the rest of the data
    ** into it. Set the next and previous block pointers to link the new
    ** block to the old.  */
    FUNC1( nRem<=0 || (iApp-1)==iLastOnBlock );
    if( rc==LSM_OK && (iApp-1)==iLastOnBlock ){
      u8 aPtr[4];                 /* Space to serialize a u32 */
      int iBlk;                   /* New block number */

      if( nWrite>0 ){
        /* Allocate a new block. */
        rc = FUNC7(pFS->pDb, 0, &iBlk);

        /* Set the "next" pointer on the old block */
        if( rc==LSM_OK ){
          FUNC1( iApp==(FUNC6(pFS, iApp)*pFS->nBlocksize)-4 );
          FUNC9(aPtr, iBlk);
          rc = FUNC8(pFS->pEnv, pFS->fdDb, iApp, aPtr, sizeof(aPtr));
        }

        /* Set the "prev" pointer on the new block */
        if( rc==LSM_OK ){
          LsmPgno iWrite;
          FUNC9(aPtr, FUNC6(pFS, iApp));
          iWrite = FUNC4(pFS, iBlk);
          rc = FUNC8(pFS->pEnv, pFS->fdDb, iWrite-4, aPtr, sizeof(aPtr));
          if( nRem>0 ) iApp = iWrite;
        }
      }else{
        /* The next block is already allocated. */
        FUNC1( nRem>0 );
        FUNC1( pSeg->pRedirect==0 );
        rc = FUNC3(pFS, 0, FUNC6(pFS, iApp), &iBlk);
        iRet = iApp = FUNC4(pFS, iBlk);
      }

      /* Write the remaining data into the new block */
      if( rc==LSM_OK && nRem>0 ){
        rc = FUNC8(pFS->pEnv, pFS->fdDb, iApp, &aData[nWrite], nRem);
        iApp += nRem;
      }
    }

    pSeg->iLastPg = iApp-1;
    *pRc = rc;
  }

  return iRet;
}