#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_14__ {void* pData; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {TYPE_1__* pDb; } ;
struct TYPE_12__ {scalar_t__ iRoot; } ;
struct TYPE_11__ {int /*<<< orphan*/  xCmp; int /*<<< orphan*/  pFS; } ;
typedef  TYPE_2__ Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_3__ MultiCursor ;
typedef  int LsmPgno ;
typedef  TYPE_4__ LsmBlob ;

/* Variables and functions */
 int LSM_OK ; 
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int,int*,int*,void**,int*,TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,void*,int,int,void*,int) ; 

__attribute__((used)) static int FUNC11(
  MultiCursor *pCsr,              /* Multi-cursor object */
  Segment *pSeg,                  /* Seek within this segment */
  int iTopic,
  void *pKey, int nKey,           /* Key to seek to */
  LsmPgno *aPg,                   /* OUT: Page numbers */
  Page **ppPg                     /* OUT: Leaf (sorted-run) page reference */
){
  int i = 0;
  int rc;
  int iPg;
  Page *pPg = 0;
  LsmBlob blob = {0, 0, 0};

  iPg = (int)pSeg->iRoot;
  do {
    LsmPgno *piFirst = 0;
    if( aPg ){
      aPg[i++] = iPg;
      piFirst = &aPg[i];
    }

    rc = FUNC2(pCsr->pDb->pFS, pSeg, iPg, &pPg);
    FUNC0( rc==LSM_OK || pPg==0 );
    if( rc==LSM_OK ){
      u8 *aData;                  /* Buffer containing page data */
      int nData;                  /* Size of aData[] in bytes */
      int iMin;
      int iMax;
      int nRec;
      int flags;

      aData = FUNC1(pPg, &nData);
      flags = FUNC6(aData, nData);
      if( (flags & SEGMENT_BTREE_FLAG)==0 ) break;

      iPg = (int)FUNC8(aData, nData);
      nRec = FUNC7(aData, nData);

      iMin = 0;
      iMax = nRec-1;
      while( iMax>=iMin ){
        int iTry = (iMin+iMax)/2;
        void *pKeyT; int nKeyT;       /* Key for cell iTry */
        int iTopicT;                  /* Topic for key pKeyT/nKeyT */
        LsmPgno iPtr;                 /* Pointer associated with cell iTry */
        int res;                      /* (pKey - pKeyT) */

        rc = FUNC4(
            pSeg, pPg, iTry, &iPtr, &iTopicT, &pKeyT, &nKeyT, &blob
        );
        if( rc!=LSM_OK ) break;
        if( piFirst && pKeyT==blob.pData ){
          *piFirst = FUNC5(pPg, iTry);
          piFirst = 0;
          i++;
        }

        res = FUNC10(
            pCsr->pDb->xCmp, iTopic, pKey, nKey, iTopicT, pKeyT, nKeyT
        );
        if( res<0 ){
          iPg = (int)iPtr;
          iMax = iTry-1;
        }else{
          iMin = iTry+1;
        }
      }
      FUNC3(pPg);
      pPg = 0;
    }
  }while( rc==LSM_OK );

  FUNC9(&blob);
  FUNC0( (rc==LSM_OK)==(pPg!=0) );
  if( ppPg ){
    *ppPg = pPg;
  }else{
    FUNC3(pPg);
  }
  return rc;
}