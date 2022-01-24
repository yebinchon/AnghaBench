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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/  pWorker; int /*<<< orphan*/  pFS; } ;
typedef  TYPE_2__ lsm_db ;
struct TYPE_5__ {int nHier; int /*<<< orphan*/ ** apHier; } ;
struct TYPE_7__ {int /*<<< orphan*/  pLevel; TYPE_1__ hier; TYPE_2__* pDb; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_3__ MergeWorker ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  SEGMENT_BTREE_FLAG ; 
 int FUNC0 (int,int) ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC13(
  MergeWorker *pMW,               /* Merge worker */
  int bSep                        /* True for separators run */
){
  lsm_db *pDb = pMW->pDb;         /* Database handle */
  int rc = LSM_OK;                /* Return code */
  int i;
  Page **apHier = pMW->hier.apHier;
  int nHier = pMW->hier.nHier;

  for(i=0; rc==LSM_OK && i<nHier; i++){
    Page *pNew = 0;
    rc = FUNC8(pDb->pFS, pDb->pWorker, pMW->pLevel, 1, &pNew);
    FUNC4( rc==LSM_OK );

    if( rc==LSM_OK ){
      u8 *a1; int n1;
      u8 *a2; int n2;

      a1 = FUNC5(pNew, &n1);
      a2 = FUNC5(apHier[i], &n2);

      FUNC4( n1==n2 || n1+4==n2 );

      if( n1==n2 ){
        FUNC11(a1, a2, n2);
      }else{
        int nEntry = FUNC12(a2, n2);
        int iEof1 = FUNC0(n1, nEntry);
        int iEof2 = FUNC0(n2, nEntry);

        FUNC11(a1, a2, iEof2 - 4);
        FUNC11(&a1[iEof1], &a2[iEof2], n2 - iEof2);
      }

      FUNC6(apHier[i]);
      apHier[i] = pNew;

#if 0
      assert( n1==n2 || n1+4==n2 || n2+4==n1 );
      if( n1>=n2 ){
        /* If n1 (size of the new page) is equal to or greater than n2 (the
        ** size of the old page), then copy the data into the new page. If
        ** n1==n2, this could be done with a single memcpy(). However, 
        ** since sometimes n1>n2, the page content and footer must be copied 
        ** separately. */
        int nEntry = pageGetNRec(a2, n2);
        int iEof1 = SEGMENT_EOF(n1, nEntry);
        int iEof2 = SEGMENT_EOF(n2, nEntry);
        memcpy(a1, a2, iEof2);
        memcpy(&a1[iEof1], &a2[iEof2], n2 - iEof2);
        lsmFsPageRelease(apHier[i]);
        apHier[i] = pNew;
      }else{
        lsmPutU16(&a1[SEGMENT_FLAGS_OFFSET(n1)], SEGMENT_BTREE_FLAG);
        lsmPutU16(&a1[SEGMENT_NRECORD_OFFSET(n1)], 0);
        lsmPutU64(&a1[SEGMENT_POINTER_OFFSET(n1)], 0);
        i = i - 1;
        lsmFsPageRelease(pNew);
      }
#endif
    }
  }

#ifdef LSM_DEBUG
  if( rc==LSM_OK ){
    for(i=0; i<nHier; i++) assert( lsmFsPageWritable(apHier[i]) );
  }
#endif

  return rc;
}