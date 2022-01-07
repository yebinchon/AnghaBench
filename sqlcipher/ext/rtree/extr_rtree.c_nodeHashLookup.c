
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_6__ {TYPE_1__** aHash; } ;
struct TYPE_5__ {scalar_t__ iNode; struct TYPE_5__* pNext; } ;
typedef TYPE_1__ RtreeNode ;
typedef TYPE_2__ Rtree ;


 size_t nodeHash (scalar_t__) ;

__attribute__((used)) static RtreeNode *nodeHashLookup(Rtree *pRtree, i64 iNode){
  RtreeNode *p;
  for(p=pRtree->aHash[nodeHash(iNode)]; p && p->iNode!=iNode; p=p->pNext);
  return p;
}
