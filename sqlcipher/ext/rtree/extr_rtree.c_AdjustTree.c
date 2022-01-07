
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pParent; } ;
typedef TYPE_1__ RtreeNode ;
typedef int RtreeCell ;
typedef int Rtree ;


 int RTREE_IS_CORRUPT (int *) ;
 int SQLITE_CORRUPT_VTAB ;
 int SQLITE_OK ;
 int cellContains (int *,int *,int *) ;
 int cellUnion (int *,int *,int *) ;
 int nodeGetCell (int *,TYPE_1__*,int,int *) ;
 int nodeOverwriteCell (int *,TYPE_1__*,int *,int) ;
 scalar_t__ nodeParentIndex (int *,TYPE_1__*,int*) ;

__attribute__((used)) static int AdjustTree(
  Rtree *pRtree,
  RtreeNode *pNode,
  RtreeCell *pCell
){
  RtreeNode *p = pNode;
  int cnt = 0;
  while( p->pParent ){
    RtreeNode *pParent = p->pParent;
    RtreeCell cell;
    int iCell;

    if( (++cnt)>1000 || nodeParentIndex(pRtree, p, &iCell) ){
      RTREE_IS_CORRUPT(pRtree);
      return SQLITE_CORRUPT_VTAB;
    }

    nodeGetCell(pRtree, pParent, iCell, &cell);
    if( !cellContains(pRtree, &cell, pCell) ){
      cellUnion(pRtree, &cell, pCell);
      nodeOverwriteCell(pRtree, pParent, &cell, iCell);
    }

    p = pParent;
  }
  return SQLITE_OK;
}
