
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int iRowid; } ;
struct TYPE_12__ {int iNode; struct TYPE_12__* pParent; } ;
typedef TYPE_1__ RtreeNode ;
typedef TYPE_2__ RtreeCell ;
typedef int Rtree ;


 int NCELL (TYPE_1__*) ;
 int SQLITE_OK ;
 int cellUnion (int *,TYPE_2__*,TYPE_2__*) ;
 int nodeGetCell (int *,TYPE_1__*,int,TYPE_2__*) ;
 int nodeOverwriteCell (int *,TYPE_1__*,TYPE_2__*,int) ;
 int nodeParentIndex (int *,TYPE_1__*,int*) ;

__attribute__((used)) static int fixBoundingBox(Rtree *pRtree, RtreeNode *pNode){
  RtreeNode *pParent = pNode->pParent;
  int rc = SQLITE_OK;
  if( pParent ){
    int ii;
    int nCell = NCELL(pNode);
    RtreeCell box;
    nodeGetCell(pRtree, pNode, 0, &box);
    for(ii=1; ii<nCell; ii++){
      RtreeCell cell;
      nodeGetCell(pRtree, pNode, ii, &cell);
      cellUnion(pRtree, &box, &cell);
    }
    box.iRowid = pNode->iNode;
    rc = nodeParentIndex(pRtree, pNode, &ii);
    if( rc==SQLITE_OK ){
      nodeOverwriteCell(pRtree, pParent, &box, ii);
      rc = fixBoundingBox(pRtree, pParent);
    }
  }
  return rc;
}
