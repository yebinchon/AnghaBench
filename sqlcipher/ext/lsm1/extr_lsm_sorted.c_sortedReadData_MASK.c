#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int nData; void* pData; } ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__ LsmBlob ;

/* Variables and functions */
 int LSM_CORRUPT_BKPT ; 
 int FUNC0 (int,int) ; 
 int LSM_OK ; 
 int SEGMENT_BTREE_FLAG ; 
 int FUNC1 (int,int) ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC13(
  Segment *pSeg,
  Page *pPg,
  int iOff,
  int nByte,
  void **ppData,
  LsmBlob *pBlob
){
  int rc = LSM_OK;
  int iEnd;
  int nData;
  int nCell;
  u8 *aData;

  aData = FUNC5(pPg, &nData);
  nCell = FUNC9(&aData[FUNC3(nData)]);
  iEnd = FUNC1(nData, nCell);
  FUNC4( iEnd>0 && iEnd<nData );

  if( iOff+nByte<=iEnd ){
    *ppData = (void *)&aData[iOff];
  }else{
    int nRem = nByte;
    int i = iOff;
    u8 *aDest;

    /* Make sure the blob is big enough to store the value being loaded. */
    rc = FUNC12(FUNC10(pPg), pBlob, nByte);
    if( rc!=LSM_OK ) return rc;
    pBlob->nData = nByte;
    aDest = (u8 *)pBlob->pData;
    *ppData = pBlob->pData;

    /* Increment the pointer pages ref-count. */
    FUNC7(pPg);

    while( rc==LSM_OK ){
      Page *pNext;
      int flags;

      /* Copy data from pPg into the output buffer. */
      int nCopy = FUNC0(nRem, iEnd-i);
      if( nCopy>0 ){
        FUNC11(&aDest[nByte-nRem], &aData[i], nCopy);
        nRem -= nCopy;
        i += nCopy;
        FUNC4( nRem==0 || i==iEnd );
      }
      FUNC4( nRem>=0 );
      if( nRem==0 ) break;
      i -= iEnd;

      /* Grab the next page in the segment */

      do {
        rc = FUNC6(pSeg, pPg, 1, &pNext);
        if( rc==LSM_OK && pNext==0 ){
          rc = LSM_CORRUPT_BKPT;
        }
        if( rc ) break;
        FUNC8(pPg);
        pPg = pNext;
        aData = FUNC5(pPg, &nData);
        flags = FUNC9(&aData[FUNC2(nData)]);
      }while( flags&SEGMENT_BTREE_FLAG );

      iEnd = FUNC1(nData, FUNC9(&aData[nData-2]));
      FUNC4( iEnd>0 && iEnd<nData );
    }

    FUNC8(pPg);
  }

  return rc;
}