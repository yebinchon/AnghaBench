#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_10__ {int nDim; } ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  scalar_t__ RtreeDValue ;
typedef  int /*<<< orphan*/  RtreeCell ;
typedef  TYPE_1__ Rtree ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ RTREE_ZERO ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,int,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int**) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(
  Rtree *pRtree,
  RtreeCell *aCell,
  int nCell,
  RtreeNode *pLeft,
  RtreeNode *pRight,
  RtreeCell *pBboxLeft,
  RtreeCell *pBboxRight
){
  int **aaSorted;
  int *aSpare;
  int ii;

  int iBestDim = 0;
  int iBestSplit = 0;
  RtreeDValue fBestMargin = RTREE_ZERO;

  sqlite3_int64 nByte = (pRtree->nDim+1)*(sizeof(int*)+nCell*sizeof(int));

  aaSorted = (int **)FUNC10(nByte);
  if( !aaSorted ){
    return SQLITE_NOMEM;
  }

  aSpare = &((int *)&aaSorted[pRtree->nDim])[pRtree->nDim*nCell];
  FUNC7(aaSorted, 0, nByte);
  for(ii=0; ii<pRtree->nDim; ii++){
    int jj;
    aaSorted[ii] = &((int *)&aaSorted[pRtree->nDim])[ii*nCell];
    for(jj=0; jj<nCell; jj++){
      aaSorted[ii][jj] = jj;
    }
    FUNC1(pRtree, aaSorted[ii], nCell, ii, aCell, aSpare);
  }

  for(ii=0; ii<pRtree->nDim; ii++){
    RtreeDValue margin = RTREE_ZERO;
    RtreeDValue fBestOverlap = RTREE_ZERO;
    RtreeDValue fBestArea = RTREE_ZERO;
    int iBestLeft = 0;
    int nLeft;

    for(
      nLeft=FUNC0(pRtree); 
      nLeft<=(nCell-FUNC0(pRtree)); 
      nLeft++
    ){
      RtreeCell left;
      RtreeCell right;
      int kk;
      RtreeDValue overlap;
      RtreeDValue area;

      FUNC6(&left, &aCell[aaSorted[ii][0]], sizeof(RtreeCell));
      FUNC6(&right, &aCell[aaSorted[ii][nCell-1]], sizeof(RtreeCell));
      for(kk=1; kk<(nCell-1); kk++){
        if( kk<nLeft ){
          FUNC5(pRtree, &left, &aCell[aaSorted[ii][kk]]);
        }else{
          FUNC5(pRtree, &right, &aCell[aaSorted[ii][kk]]);
        }
      }
      margin += FUNC3(pRtree, &left);
      margin += FUNC3(pRtree, &right);
      overlap = FUNC4(pRtree, &left, &right, 1);
      area = FUNC2(pRtree, &left) + FUNC2(pRtree, &right);
      if( (nLeft==FUNC0(pRtree))
       || (overlap<fBestOverlap)
       || (overlap==fBestOverlap && area<fBestArea)
      ){
        iBestLeft = nLeft;
        fBestOverlap = overlap;
        fBestArea = area;
      }
    }

    if( ii==0 || margin<fBestMargin ){
      iBestDim = ii;
      fBestMargin = margin;
      iBestSplit = iBestLeft;
    }
  }

  FUNC6(pBboxLeft, &aCell[aaSorted[iBestDim][0]], sizeof(RtreeCell));
  FUNC6(pBboxRight, &aCell[aaSorted[iBestDim][iBestSplit]], sizeof(RtreeCell));
  for(ii=0; ii<nCell; ii++){
    RtreeNode *pTarget = (ii<iBestSplit)?pLeft:pRight;
    RtreeCell *pBbox = (ii<iBestSplit)?pBboxLeft:pBboxRight;
    RtreeCell *pCell = &aCell[aaSorted[iBestDim][ii]];
    FUNC8(pRtree, pTarget, pCell);
    FUNC5(pRtree, pBbox, pCell);
  }

  FUNC9(aaSorted);
  return SQLITE_OK;
}