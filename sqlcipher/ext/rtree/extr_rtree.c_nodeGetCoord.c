
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nBytesPerCell; } ;
struct TYPE_5__ {int * zData; } ;
typedef TYPE_1__ RtreeNode ;
typedef int RtreeCoord ;
typedef TYPE_2__ Rtree ;


 int readCoord (int *,int *) ;

__attribute__((used)) static void nodeGetCoord(
  Rtree *pRtree,
  RtreeNode *pNode,
  int iCell,
  int iCoord,
  RtreeCoord *pCoord
){
  readCoord(&pNode->zData[12 + pRtree->nBytesPerCell*iCell + 4*iCoord], pCoord);
}
