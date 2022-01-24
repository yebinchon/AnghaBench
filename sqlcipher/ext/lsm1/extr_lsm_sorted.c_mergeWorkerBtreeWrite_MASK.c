#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int /*<<< orphan*/  pWorker; int /*<<< orphan*/  pFS; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_7__ {int nHier; int /*<<< orphan*/ ** apHier; } ;
struct TYPE_6__ {int /*<<< orphan*/  pLevel; TYPE_1__* pDb; TYPE_3__ hier; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__ MergeWorker ;
typedef  scalar_t__ LsmPgno ;
typedef  TYPE_3__ Hierarchy ;

/* Variables and functions */
 int LSM_NOMEM_BKPT ; 
 int LSM_OK ; 
 int /*<<< orphan*/  SEGMENT_BTREE_FLAG ; 
 size_t FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int* FUNC6 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int*,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int FUNC15 (int) ; 
 scalar_t__ FUNC16 (int*,int) ; 
 int /*<<< orphan*/  FUNC17 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC18 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int*,int) ; 
 int FUNC20 (int*,int) ; 

__attribute__((used)) static int FUNC21(
  MergeWorker *pMW,
  u8 eType,
  LsmPgno iPtr,
  LsmPgno iKeyPg,
  void *pKey,
  int nKey
){
  Hierarchy *p = &pMW->hier;
  lsm_db *pDb = pMW->pDb;         /* Database handle */
  int rc = LSM_OK;                /* Return Code */
  int iLevel;                     /* Level of b-tree hierachy to write to */
  int nData;                      /* Size of aData[] in bytes */
  u8 *aData;                      /* Page data for level iLevel */
  int iOff;                       /* Offset on b-tree page to write record to */
  int nRec;                       /* Initial number of records on b-tree page */

  /* iKeyPg should be zero for an ordinary b-tree key, or non-zero for an
  ** indirect key. The flags byte for an indirect key is 0x00.  */
  FUNC5( (eType==0)==(iKeyPg!=0) );

  /* The MergeWorker.apHier[] array contains the right-most leaf of the b-tree
  ** hierarchy, the root node, and all nodes that lie on the path between.
  ** apHier[0] is the right-most leaf and apHier[pMW->nHier-1] is the current
  ** root page.
  **
  ** This loop searches for a node with enough space to store the key on,
  ** starting with the leaf and iterating up towards the root. When the loop
  ** exits, the key may be written to apHier[iLevel].  */
  for(iLevel=0; iLevel<=p->nHier; iLevel++){
    int nByte;                    /* Number of free bytes required */

    if( iLevel==p->nHier ){
      /* Extend the array and allocate a new root page. */
      Page **aNew;
      aNew = (Page **)FUNC14(
          pMW->pDb->pEnv, p->apHier, sizeof(Page *)*(p->nHier+1)
      );
      if( !aNew ){
        return LSM_NOMEM_BKPT;
      }
      p->apHier = aNew;
    }else{
      Page *pOld;
      int nFree;

      /* If the key will fit on this page, break out of the loop here.
      ** The new entry will be written to page apHier[iLevel]. */
      pOld = p->apHier[iLevel];
      FUNC5( FUNC10(pOld) );
      aData = FUNC6(pOld, &nData);
      if( eType==0 ){
        nByte = 2 + 1 + FUNC15((int)iPtr) + FUNC15((int)iKeyPg);
      }else{
        nByte = 2 + 1 + FUNC15((int)iPtr) + FUNC15(nKey) + nKey;
      }
      nRec = FUNC20(aData, nData);
      nFree = FUNC1(nData, nRec) - FUNC19(aData, nData);
      if( nByte<=nFree ) break;

      /* Otherwise, this page is full. Set the right-hand-child pointer
      ** to iPtr and release it.  */
      FUNC13(&aData[FUNC4(nData)], iPtr);
      FUNC5( FUNC7(pOld)==0 );
      rc = FUNC8(pOld);
      if( rc==LSM_OK ){
        iPtr = FUNC7(pOld);
        FUNC9(pOld);
      }
    }

    /* Allocate a new page for apHier[iLevel]. */
    p->apHier[iLevel] = 0;
    if( rc==LSM_OK ){
      rc = FUNC11(
          pDb->pFS, pDb->pWorker, pMW->pLevel, 1, &p->apHier[iLevel]
      );
    }
    if( rc!=LSM_OK ) return rc;

    aData = FUNC6(p->apHier[iLevel], &nData);
    FUNC18(aData, 0, nData);
    FUNC12(&aData[FUNC2(nData)], SEGMENT_BTREE_FLAG);
    FUNC12(&aData[FUNC3(nData)], 0);

    if( iLevel==p->nHier ){
      p->nHier++;
      break;
    }
  }

  /* Write the key into page apHier[iLevel]. */
  aData = FUNC6(p->apHier[iLevel], &nData);
  iOff = FUNC19(aData, nData);
  nRec = FUNC20(aData, nData);
  FUNC12(&aData[FUNC0(nData, nRec)], (u16)iOff);
  FUNC12(&aData[FUNC3(nData)], (u16)(nRec+1));
  if( eType==0 ){
    aData[iOff++] = 0x00;
    iOff += FUNC16(&aData[iOff], (int)iPtr);
    iOff += FUNC16(&aData[iOff], (int)iKeyPg);
  }else{
    aData[iOff++] = eType;
    iOff += FUNC16(&aData[iOff], (int)iPtr);
    iOff += FUNC16(&aData[iOff], nKey);
    FUNC17(&aData[iOff], pKey, nKey);
  }

  return rc;
}