
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_28__ {int iReinsertHeight; } ;
struct TYPE_27__ {int iRowid; } ;
struct TYPE_26__ {int iNode; struct TYPE_26__* pParent; } ;
typedef TYPE_1__ RtreeNode ;
typedef TYPE_2__ RtreeCell ;
typedef TYPE_3__ Rtree ;


 int AdjustTree (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int Reinsert (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ;
 int SQLITE_OK ;
 int SplitNode (TYPE_3__*,TYPE_1__*,TYPE_2__*,int) ;
 TYPE_1__* nodeHashLookup (TYPE_3__*,int ) ;
 scalar_t__ nodeInsertCell (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int nodeReference (TYPE_1__*) ;
 int nodeRelease (TYPE_3__*,TYPE_1__*) ;
 int parentWrite (TYPE_3__*,int ,int) ;
 int rowidWrite (TYPE_3__*,int ,int) ;

__attribute__((used)) static int rtreeInsertCell(
  Rtree *pRtree,
  RtreeNode *pNode,
  RtreeCell *pCell,
  int iHeight
){
  int rc = SQLITE_OK;
  if( iHeight>0 ){
    RtreeNode *pChild = nodeHashLookup(pRtree, pCell->iRowid);
    if( pChild ){
      nodeRelease(pRtree, pChild->pParent);
      nodeReference(pNode);
      pChild->pParent = pNode;
    }
  }
  if( nodeInsertCell(pRtree, pNode, pCell) ){
    if( iHeight<=pRtree->iReinsertHeight || pNode->iNode==1){
      rc = SplitNode(pRtree, pNode, pCell, iHeight);
    }else{
      pRtree->iReinsertHeight = iHeight;
      rc = Reinsert(pRtree, pNode, pCell, iHeight);
    }
  }else{
    rc = AdjustTree(pRtree, pNode, pCell);
    if( rc==SQLITE_OK ){
      if( iHeight==0 ){
        rc = rowidWrite(pRtree, pCell->iRowid, pNode->iNode);
      }else{
        rc = parentWrite(pRtree, pCell->iRowid, pNode->iNode);
      }
    }
  }
  return rc;
}
