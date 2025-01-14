
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_16__ {int iDepth; } ;
struct TYPE_15__ {int iRowid; } ;
typedef int RtreeNode ;
typedef scalar_t__ RtreeDValue ;
typedef TYPE_1__ RtreeCell ;
typedef TYPE_2__ Rtree ;


 int NCELL (int *) ;
 scalar_t__ RTREE_ZERO ;
 int SQLITE_OK ;
 scalar_t__ cellArea (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ cellGrowth (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int nodeAcquire (TYPE_2__*,int,int *,int **) ;
 int nodeGetCell (TYPE_2__*,int *,int,TYPE_1__*) ;
 int nodeRelease (TYPE_2__*,int *) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int ChooseLeaf(
  Rtree *pRtree,
  RtreeCell *pCell,
  int iHeight,
  RtreeNode **ppLeaf
){
  int rc;
  int ii;
  RtreeNode *pNode = 0;
  rc = nodeAcquire(pRtree, 1, 0, &pNode);

  for(ii=0; rc==SQLITE_OK && ii<(pRtree->iDepth-iHeight); ii++){
    int iCell;
    sqlite3_int64 iBest = 0;

    RtreeDValue fMinGrowth = RTREE_ZERO;
    RtreeDValue fMinArea = RTREE_ZERO;

    int nCell = NCELL(pNode);
    RtreeCell cell;
    RtreeNode *pChild;

    RtreeCell *aCell = 0;





    for(iCell=0; iCell<nCell; iCell++){
      int bBest = 0;
      RtreeDValue growth;
      RtreeDValue area;
      nodeGetCell(pRtree, pNode, iCell, &cell);
      growth = cellGrowth(pRtree, &cell, pCell);
      area = cellArea(pRtree, &cell);
      if( iCell==0||growth<fMinGrowth||(growth==fMinGrowth && area<fMinArea) ){
        bBest = 1;
      }
      if( bBest ){
        fMinGrowth = growth;
        fMinArea = area;
        iBest = cell.iRowid;
      }
    }

    sqlite3_free(aCell);
    rc = nodeAcquire(pRtree, iBest, pNode, &pChild);
    nodeRelease(pRtree, pNode);
    pNode = pChild;
  }

  *ppLeaf = pNode;
  return rc;
}
