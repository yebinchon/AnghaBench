
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iNode; struct TYPE_4__* pParent; } ;
typedef TYPE_1__ RtreeNode ;
typedef int Rtree ;


 int SQLITE_OK ;
 int nodeRowidIndex (int *,TYPE_1__*,int ,int*) ;

__attribute__((used)) static int nodeParentIndex(Rtree *pRtree, RtreeNode *pNode, int *piIndex){
  RtreeNode *pParent = pNode->pParent;
  if( pParent ){
    return nodeRowidIndex(pRtree, pParent, pNode->iNode, piIndex);
  }
  *piIndex = -1;
  return SQLITE_OK;
}
