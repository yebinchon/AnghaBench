
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_7__ {int nBytesPerCell; } ;
struct TYPE_6__ {int * zData; } ;
typedef TYPE_1__ RtreeNode ;
typedef TYPE_2__ Rtree ;


 int NCELL (TYPE_1__*) ;
 int assert (int) ;
 int readInt64 (int *) ;

__attribute__((used)) static i64 nodeGetRowid(
  Rtree *pRtree,
  RtreeNode *pNode,
  int iCell
){
  assert( iCell<NCELL(pNode) );
  return readInt64(&pNode->zData[4 + pRtree->nBytesPerCell*iCell]);
}
