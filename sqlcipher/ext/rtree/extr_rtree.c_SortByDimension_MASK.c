#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* aCoord; } ;
typedef  scalar_t__ RtreeDValue ;
typedef  TYPE_1__ RtreeCell ;
typedef  int /*<<< orphan*/  Rtree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 

__attribute__((used)) static void FUNC3(
  Rtree *pRtree,
  int *aIdx, 
  int nIdx, 
  int iDim, 
  RtreeCell *aCell, 
  int *aSpare
){
  if( nIdx>1 ){

    int iLeft = 0;
    int iRight = 0;

    int nLeft = nIdx/2;
    int nRight = nIdx-nLeft;
    int *aLeft = aIdx;
    int *aRight = &aIdx[nLeft];

    FUNC3(pRtree, aLeft, nLeft, iDim, aCell, aSpare);
    FUNC3(pRtree, aRight, nRight, iDim, aCell, aSpare);

    FUNC2(aSpare, aLeft, sizeof(int)*nLeft);
    aLeft = aSpare;
    while( iLeft<nLeft || iRight<nRight ){
      RtreeDValue xleft1 = FUNC0(aCell[aLeft[iLeft]].aCoord[iDim*2]);
      RtreeDValue xleft2 = FUNC0(aCell[aLeft[iLeft]].aCoord[iDim*2+1]);
      RtreeDValue xright1 = FUNC0(aCell[aRight[iRight]].aCoord[iDim*2]);
      RtreeDValue xright2 = FUNC0(aCell[aRight[iRight]].aCoord[iDim*2+1]);
      if( (iLeft!=nLeft) && ((iRight==nRight)
       || (xleft1<xright1)
       || (xleft1==xright1 && xleft2<xright2)
      )){
        aIdx[iLeft+iRight] = aLeft[iLeft];
        iLeft++;
      }else{
        aIdx[iLeft+iRight] = aRight[iRight];
        iRight++;
      }
    }

#if 0
    /* Check that the sort worked */
    {
      int jj;
      for(jj=1; jj<nIdx; jj++){
        RtreeDValue xleft1 = aCell[aIdx[jj-1]].aCoord[iDim*2];
        RtreeDValue xleft2 = aCell[aIdx[jj-1]].aCoord[iDim*2+1];
        RtreeDValue xright1 = aCell[aIdx[jj]].aCoord[iDim*2];
        RtreeDValue xright2 = aCell[aIdx[jj]].aCoord[iDim*2+1];
        assert( xleft1<=xright1 && (xleft1<xright1 || xleft2<=xright2) );
      }
    }
#endif
  }
}