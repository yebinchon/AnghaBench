
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RtreeDValue ;
typedef int RtreeCell ;
typedef int Rtree ;


 scalar_t__ cellArea (int *,int *) ;
 int cellUnion (int *,int *,int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static RtreeDValue cellGrowth(Rtree *pRtree, RtreeCell *p, RtreeCell *pCell){
  RtreeDValue area;
  RtreeCell cell;
  memcpy(&cell, p, sizeof(RtreeCell));
  area = cellArea(pRtree, &cell);
  cellUnion(pRtree, &cell, pCell);
  return (cellArea(pRtree, &cell)-area);
}
