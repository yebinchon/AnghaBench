#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_34__ {int nDim; } ;
struct TYPE_33__ {scalar_t__ iRowid; int /*<<< orphan*/ * aCoord; } ;
struct TYPE_32__ {int /*<<< orphan*/  iNode; } ;
typedef  TYPE_1__ RtreeNode ;
typedef  int RtreeDValue ;
typedef  TYPE_2__ RtreeCell ;
typedef  TYPE_3__ Rtree ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_2__*,int,TYPE_1__**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int RTREE_MAX_DIMENSIONS ; 
 int FUNC3 (TYPE_3__*) ; 
 int RTREE_ZERO ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int*,int*) ; 
 int FUNC5 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_1__*,TYPE_2__*) ; 
 int FUNC10 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC12 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(
  Rtree *pRtree, 
  RtreeNode *pNode, 
  RtreeCell *pCell, 
  int iHeight
){
  int *aOrder;
  int *aSpare;
  RtreeCell *aCell;
  RtreeDValue *aDistance;
  int nCell;
  RtreeDValue aCenterCoord[RTREE_MAX_DIMENSIONS];
  int iDim;
  int ii;
  int rc = SQLITE_OK;
  int n;

  FUNC7(aCenterCoord, 0, sizeof(RtreeDValue)*RTREE_MAX_DIMENSIONS);

  nCell = FUNC2(pNode)+1;
  n = (nCell+1)&(~1);

  /* Allocate the buffers used by this operation. The allocation is
  ** relinquished before this function returns.
  */
  aCell = (RtreeCell *)FUNC16(n * (
    sizeof(RtreeCell)     +         /* aCell array */
    sizeof(int)           +         /* aOrder array */
    sizeof(int)           +         /* aSpare array */
    sizeof(RtreeDValue)             /* aDistance array */
  ));
  if( !aCell ){
    return SQLITE_NOMEM;
  }
  aOrder    = (int *)&aCell[n];
  aSpare    = (int *)&aOrder[n];
  aDistance = (RtreeDValue *)&aSpare[n];

  for(ii=0; ii<nCell; ii++){
    if( ii==(nCell-1) ){
      FUNC6(&aCell[ii], pCell, sizeof(RtreeCell));
    }else{
      FUNC8(pRtree, pNode, ii, &aCell[ii]);
    }
    aOrder[ii] = ii;
    for(iDim=0; iDim<pRtree->nDim; iDim++){
      aCenterCoord[iDim] += FUNC1(aCell[ii].aCoord[iDim*2]);
      aCenterCoord[iDim] += FUNC1(aCell[ii].aCoord[iDim*2+1]);
    }
  }
  for(iDim=0; iDim<pRtree->nDim; iDim++){
    aCenterCoord[iDim] = (aCenterCoord[iDim]/(nCell*(RtreeDValue)2));
  }

  for(ii=0; ii<nCell; ii++){
    aDistance[ii] = RTREE_ZERO;
    for(iDim=0; iDim<pRtree->nDim; iDim++){
      RtreeDValue coord = (FUNC1(aCell[ii].aCoord[iDim*2+1]) - 
                               FUNC1(aCell[ii].aCoord[iDim*2]));
      aDistance[ii] += (coord-aCenterCoord[iDim])*(coord-aCenterCoord[iDim]);
    }
  }

  FUNC4(aOrder, nCell, aDistance, aSpare);
  FUNC11(pRtree, pNode);

  for(ii=0; rc==SQLITE_OK && ii<(nCell-(FUNC3(pRtree)+1)); ii++){
    RtreeCell *p = &aCell[aOrder[ii]];
    FUNC9(pRtree, pNode, p);
    if( p->iRowid==pCell->iRowid ){
      if( iHeight==0 ){
        rc = FUNC13(pRtree, p->iRowid, pNode->iNode);
      }else{
        rc = FUNC12(pRtree, p->iRowid, pNode->iNode);
      }
    }
  }
  if( rc==SQLITE_OK ){
    rc = FUNC5(pRtree, pNode);
  }
  for(; rc==SQLITE_OK && ii<nCell; ii++){
    /* Find a node to store this cell in. pNode->iNode currently contains
    ** the height of the sub-tree headed by the cell.
    */
    RtreeNode *pInsert;
    RtreeCell *p = &aCell[aOrder[ii]];
    rc = FUNC0(pRtree, p, iHeight, &pInsert);
    if( rc==SQLITE_OK ){
      int rc2;
      rc = FUNC14(pRtree, pInsert, p, iHeight);
      rc2 = FUNC10(pRtree, pInsert);
      if( rc==SQLITE_OK ){
        rc = rc2;
      }
    }
  }

  FUNC15(aCell);
  return rc;
}