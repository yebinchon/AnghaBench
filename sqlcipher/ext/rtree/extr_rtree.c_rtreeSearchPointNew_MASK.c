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
typedef  size_t u8 ;
struct TYPE_10__ {scalar_t__ rScore; size_t iLevel; } ;
struct TYPE_11__ {int bPoint; scalar_t__* aNode; TYPE_1__ sPoint; TYPE_1__* aPoint; int /*<<< orphan*/ * anQueue; } ;
typedef  TYPE_1__ RtreeSearchPoint ;
typedef  scalar_t__ RtreeDValue ;
typedef  TYPE_2__ RtreeCursor ;

/* Variables and functions */
 int RTREE_CACHE_SZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,scalar_t__,size_t) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static RtreeSearchPoint *FUNC5(
  RtreeCursor *pCur,    /* The cursor */
  RtreeDValue rScore,   /* Score for the new search point */
  u8 iLevel             /* Level for the new search point */
){
  RtreeSearchPoint *pNew, *pFirst;
  pFirst = FUNC4(pCur);
  pCur->anQueue[iLevel]++;
  if( pFirst==0
   || pFirst->rScore>rScore 
   || (pFirst->rScore==rScore && pFirst->iLevel>iLevel)
  ){
    if( pCur->bPoint ){
      int ii;
      pNew = FUNC3(pCur, rScore, iLevel);
      if( pNew==0 ) return 0;
      ii = (int)(pNew - pCur->aPoint) + 1;
      if( ii<RTREE_CACHE_SZ ){
        FUNC1( pCur->aNode[ii]==0 );
        pCur->aNode[ii] = pCur->aNode[0];
      }else{
        FUNC2(FUNC0(pCur), pCur->aNode[0]);
      }
      pCur->aNode[0] = 0;
      *pNew = pCur->sPoint;
    }
    pCur->sPoint.rScore = rScore;
    pCur->sPoint.iLevel = iLevel;
    pCur->bPoint = 1;
    return &pCur->sPoint;
  }else{
    return FUNC3(pCur, rScore, iLevel);
  }
}