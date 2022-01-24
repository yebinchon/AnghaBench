#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_1__* pDb; } ;
struct TYPE_14__ {TYPE_11__* pSeg; } ;
struct TYPE_13__ {int /*<<< orphan*/  pFS; } ;
struct TYPE_12__ {scalar_t__ iRoot; scalar_t__ iFirst; } ;
typedef  TYPE_2__ SegmentPtr ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_3__ MultiCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,TYPE_11__*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,int,void*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
  MultiCursor *pCsr, 
  SegmentPtr *pPtr,
  int iTopic,
  void *pKey, int nKey,
  int iPg,                        /* Page to search */
  int eSeek,                      /* Search bias - see above */
  int *piPtr,                     /* OUT: FC pointer */
  int *pbStop                     /* OUT: Stop search flag */
){
  int iPtr = iPg;
  int rc = LSM_OK;

  if( pPtr->pSeg->iRoot ){
    Page *pPg;
    FUNC0( pPtr->pSeg->iRoot!=0 );
    rc = FUNC1(pCsr, pPtr->pSeg, iTopic, pKey, nKey, 0, &pPg);
    if( rc==LSM_OK ) FUNC4(pPtr, pPg);
  }else{
    if( iPtr==0 ){
      iPtr = (int)pPtr->pSeg->iFirst;
    }
    if( rc==LSM_OK ){
      rc = FUNC2(pCsr->pDb->pFS, pPtr, iPtr);
    }
  }

  if( rc==LSM_OK ){
    rc = FUNC3(pCsr, pPtr, iTopic, pKey, nKey, eSeek, piPtr, pbStop);
  }
  return rc;
}