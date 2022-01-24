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
struct TYPE_4__ {int pPg; scalar_t__ pSeg; } ;
typedef  TYPE_1__ SegmentPtr ;
typedef  int /*<<< orphan*/  Page ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
  SegmentPtr *pPtr,              /* Load page into this SegmentPtr object */
  int eDir                       /* +1 for next(), -1 for prev() */
){
  Page *pNext;                   /* New page to load */
  int rc;                        /* Return code */

  FUNC0( eDir==1 || eDir==-1 );
  FUNC0( pPtr->pPg );
  FUNC0( pPtr->pSeg || eDir>0 );

  rc = FUNC1(pPtr->pSeg, pPtr->pPg, eDir, &pNext);
  FUNC0( rc==LSM_OK || pNext==0 );
  FUNC2(pPtr, pNext);
  return rc;
}