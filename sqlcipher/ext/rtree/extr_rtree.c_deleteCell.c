
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int iNode; struct TYPE_8__* pParent; } ;
typedef TYPE_1__ RtreeNode ;
typedef int Rtree ;


 scalar_t__ NCELL (TYPE_1__*) ;
 scalar_t__ RTREE_MINCELLS (int *) ;
 int SQLITE_OK ;
 int assert (int ) ;
 int fixBoundingBox (int *,TYPE_1__*) ;
 int fixLeafParent (int *,TYPE_1__*) ;
 int nodeDeleteCell (int *,TYPE_1__*,int) ;
 int removeNode (int *,TYPE_1__*,int) ;

__attribute__((used)) static int deleteCell(Rtree *pRtree, RtreeNode *pNode, int iCell, int iHeight){
  RtreeNode *pParent;
  int rc;

  if( SQLITE_OK!=(rc = fixLeafParent(pRtree, pNode)) ){
    return rc;
  }




  nodeDeleteCell(pRtree, pNode, iCell);






  pParent = pNode->pParent;
  assert( pParent || pNode->iNode==1 );
  if( pParent ){
    if( NCELL(pNode)<RTREE_MINCELLS(pRtree) ){
      rc = removeNode(pRtree, pNode, iHeight);
    }else{
      rc = fixBoundingBox(pRtree, pNode);
    }
  }

  return rc;
}
