#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {TYPE_1__* pDb; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  pSeg; int /*<<< orphan*/ * pPg; int /*<<< orphan*/  blob1; scalar_t__ nCell; } ;
struct TYPE_7__ {int (* xCmp ) (void*,int,void*,int) ;} ;
typedef  TYPE_2__ SegmentPtr ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_3__ MultiCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int PGFTR_SKIP_NEXT_FLAG ; 
 int PGFTR_SKIP_THIS_FLAG ; 
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int (*) (void*,int,void*,int),int,int /*<<< orphan*/ *,int,int,void*,int) ; 

__attribute__((used)) static int FUNC10(
  MultiCursor *pCsr,              /* Cursor context */
  SegmentPtr *pPtr,               /* Pointer to seek */
  int iTopic,                     /* Topic of key to search for */
  void *pKey, int nKey            /* Key to seek to */
){
  int (*xCmp)(void *, int, void *, int) = pCsr->pDb->xCmp;
  int rc = LSM_OK;

  /* If the OVERSIZED flag is set, then there is no pointer in the
  ** upper level to the next page in the segment that contains at least
  ** one key. So compare the largest key on the current page with the
  ** key being sought (pKey/nKey). If (pKey/nKey) is larger, advance
  ** to the next page in the segment that contains at least one key. 
  */
  while( rc==LSM_OK && (pPtr->flags & PGFTR_SKIP_NEXT_FLAG) ){
    u8 *pLastKey;
    int nLastKey;
    int iLastTopic;
    int res;                      /* Result of comparison */
    Page *pNext;

    /* Load the last key on the current page. */
    pLastKey = FUNC6(pPtr->pSeg,
        pPtr->pPg, pPtr->nCell-1, &iLastTopic, &nLastKey, &pPtr->blob1
    );

    /* If the loaded key is >= than (pKey/nKey), break out of the loop.
    ** If (pKey/nKey) is present in this array, it must be on the current 
    ** page.  */
    res = FUNC9(
        xCmp, iLastTopic, pLastKey, nLastKey, iTopic, pKey, nKey
    );
    if( res>=0 ) break;

    /* Advance to the next page that contains at least one key. */
    pNext = pPtr->pPg;
    FUNC3(pNext);
    while( 1 ){
      Page *pLoad;
      u8 *aData; int nData;

      rc = FUNC1(pPtr->pSeg, pNext, 1, &pLoad);
      FUNC4(pNext);
      pNext = pLoad;
      if( pNext==0 ) break;

      FUNC0( rc==LSM_OK );
      aData = FUNC2(pNext, &nData);
      if( (FUNC5(aData, nData) & SEGMENT_BTREE_FLAG)==0
       && FUNC7(aData, nData)>0
      ){
        break;
      }
    }
    if( pNext==0 ) break;
    FUNC8(pPtr, pNext);

    /* This should probably be an LSM_CORRUPT error. */
    FUNC0( rc!=LSM_OK || (pPtr->flags & PGFTR_SKIP_THIS_FLAG) );
  }

  return rc;
}