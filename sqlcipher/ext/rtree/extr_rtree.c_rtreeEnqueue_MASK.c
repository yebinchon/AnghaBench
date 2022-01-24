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
typedef  scalar_t__ u8 ;
struct TYPE_11__ {int nPoint; int nPointAlloc; TYPE_1__* aPoint; } ;
struct TYPE_10__ {scalar_t__ iLevel; int /*<<< orphan*/  rScore; } ;
typedef  TYPE_1__ RtreeSearchPoint ;
typedef  int /*<<< orphan*/  RtreeDValue ;
typedef  TYPE_2__ RtreeCursor ;

/* Variables and functions */
 scalar_t__ RTREE_MAX_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static RtreeSearchPoint *FUNC4(
  RtreeCursor *pCur,    /* The cursor */
  RtreeDValue rScore,   /* Score for the new search point */
  u8 iLevel             /* Level for the new search point */
){
  int i, j;
  RtreeSearchPoint *pNew;
  if( pCur->nPoint>=pCur->nPointAlloc ){
    int nNew = pCur->nPointAlloc*2 + 8;
    pNew = FUNC3(pCur->aPoint, nNew*sizeof(pCur->aPoint[0]));
    if( pNew==0 ) return 0;
    pCur->aPoint = pNew;
    pCur->nPointAlloc = nNew;
  }
  i = pCur->nPoint++;
  pNew = pCur->aPoint + i;
  pNew->rScore = rScore;
  pNew->iLevel = iLevel;
  FUNC0( iLevel<=RTREE_MAX_DEPTH );
  while( i>0 ){
    RtreeSearchPoint *pParent;
    j = (i-1)/2;
    pParent = pCur->aPoint + j;
    if( FUNC1(pNew, pParent)>=0 ) break;
    FUNC2(pCur, j, i);
    i = j;
    pNew = pParent;
  }
  return pNew;
}