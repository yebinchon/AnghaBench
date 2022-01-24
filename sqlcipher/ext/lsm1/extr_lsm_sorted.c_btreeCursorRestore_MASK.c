#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_15__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int iPg; int nDepth; int eType; void* pKey; int nKey; TYPE_3__ blob; TYPE_4__* aPg; int /*<<< orphan*/  iPtr; int /*<<< orphan*/  pFS; TYPE_1__* pSeg; } ;
struct TYPE_16__ {int iCell; int /*<<< orphan*/ * pPage; } ;
struct TYPE_14__ {scalar_t__ iPg; int iCell; } ;
struct TYPE_13__ {int /*<<< orphan*/  pRedirect; scalar_t__ iRoot; } ;
typedef  TYPE_1__ Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__ MergeInput ;
typedef  scalar_t__ LsmPgno ;
typedef  TYPE_3__ LsmBlob ;
typedef  TYPE_4__ BtreePg ;
typedef  TYPE_5__ BtreeCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int LSM_SEPARATOR ; 
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int,scalar_t__*,int*,void**,int*,TYPE_3__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 (int (*) (void*,int,void*,int),int,void*,int,int,void*,int) ; 

__attribute__((used)) static int FUNC15(
  BtreeCursor *pCsr, 
  int (*xCmp)(void *, int, void *, int),
  MergeInput *p
){
  int rc = LSM_OK;

  if( p->iPg ){
    lsm_env *pEnv = FUNC5(pCsr->pFS);
    int iCell;                    /* Current cell number on leaf page */
    LsmPgno iLeaf;                /* Page number of current leaf page */
    int nDepth;                   /* Depth of b-tree structure */
    Segment *pSeg = pCsr->pSeg;

    /* Decode the MergeInput structure */
    iLeaf = p->iPg;
    nDepth = (p->iCell & 0x00FF);
    iCell = (p->iCell >> 8) - 1;

    /* Allocate the BtreeCursor.aPg[] array */
    FUNC0( pCsr->aPg==0 );
    pCsr->aPg = (BtreePg *)FUNC7(pEnv, sizeof(BtreePg) * nDepth, &rc);

    /* Populate the last entry of the aPg[] array */
    if( rc==LSM_OK ){
      Page **pp = &pCsr->aPg[nDepth-1].pPage;
      pCsr->iPg = nDepth-1;
      pCsr->nDepth = nDepth;
      pCsr->aPg[pCsr->iPg].iCell = iCell;
      rc = FUNC4(pCsr->pFS, pSeg, iLeaf, pp);
    }

    /* Populate any other aPg[] array entries */
    if( rc==LSM_OK && nDepth>1 ){
      LsmBlob blob = {0,0,0};
      void *pSeek;
      int nSeek;
      int iTopicSeek;
      int iPg = 0;
      int iLoad = (int)pSeg->iRoot;
      Page *pPg = pCsr->aPg[nDepth-1].pPage;
 
      if( FUNC12(pPg)==0 ){
        /* This can happen when pPg is the right-most leaf in the b-tree.
        ** In this case, set the iTopicSeek/pSeek/nSeek key to a value
        ** greater than any real key.  */
        FUNC0( iCell==-1 );
        iTopicSeek = 1000;
        pSeek = 0;
        nSeek = 0;
      }else{
        LsmPgno dummy;
        rc = FUNC8(pSeg, pPg,
            0, &dummy, &iTopicSeek, &pSeek, &nSeek, &pCsr->blob
        );
      }

      do {
        Page *pPg2;
        rc = FUNC4(pCsr->pFS, pSeg, iLoad, &pPg2);
        FUNC0( rc==LSM_OK || pPg2==0 );
        if( rc==LSM_OK ){
          u8 *aData;                  /* Buffer containing page data */
          int nData;                  /* Size of aData[] in bytes */
          int iMin;
          int iMax;
          int iCell2;

          aData = FUNC3(pPg2, &nData);
          FUNC0( (FUNC9(aData, nData) & SEGMENT_BTREE_FLAG) );

          iLoad = (int)FUNC11(aData, nData);
          iCell2 = FUNC10(aData, nData); 
          iMax = iCell2-1;
          iMin = 0;

          while( iMax>=iMin ){
            int iTry = (iMin+iMax)/2;
            void *pKey; int nKey;         /* Key for cell iTry */
            int iTopic;                   /* Topic for key pKeyT/nKeyT */
            LsmPgno iPtr;                 /* Pointer for cell iTry */
            int res;                      /* (pSeek - pKeyT) */

            rc = FUNC8(
                pSeg, pPg2, iTry, &iPtr, &iTopic, &pKey, &nKey, &blob
            );
            if( rc!=LSM_OK ) break;

            res = FUNC14(
                xCmp, iTopicSeek, pSeek, nSeek, iTopic, pKey, nKey
            );
            FUNC0( res!=0 );

            if( res<0 ){
              iLoad = (int)iPtr;
              iCell2 = iTry;
              iMax = iTry-1;
            }else{
              iMin = iTry+1;
            }
          }

          pCsr->aPg[iPg].pPage = pPg2;
          pCsr->aPg[iPg].iCell = iCell2;
          iPg++;
          FUNC0( iPg!=nDepth-1 
               || FUNC6(pCsr->pFS, pSeg->pRedirect, iLoad)==iLeaf
          );
        }
      }while( rc==LSM_OK && iPg<(nDepth-1) );
      FUNC13(&blob);
    }

    /* Load the current key and pointer */
    if( rc==LSM_OK ){
      BtreePg *pBtreePg;
      u8 *aData;
      int nData;

      pBtreePg = &pCsr->aPg[pCsr->iPg];
      aData = FUNC3(pBtreePg->pPage, &nData);
      pCsr->iPtr = FUNC2(aData, nData, pBtreePg->iCell+1);
      if( pBtreePg->iCell<0 ){
        LsmPgno dummy;
        int i;
        for(i=pCsr->iPg-1; i>=0; i--){
          if( pCsr->aPg[i].iCell>0 ) break;
        }
        FUNC0( i>=0 );
        rc = FUNC8(pSeg,
            pCsr->aPg[i].pPage, pCsr->aPg[i].iCell-1,
            &dummy, &pCsr->eType, &pCsr->pKey, &pCsr->nKey, &pCsr->blob
        );
        pCsr->eType |= LSM_SEPARATOR;

      }else{
        rc = FUNC1(pCsr);
      }
    }
  }
  return rc;
}