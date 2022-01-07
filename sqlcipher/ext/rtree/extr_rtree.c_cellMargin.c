
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nDim2; } ;
struct TYPE_5__ {int * aCoord; } ;
typedef int RtreeDValue ;
typedef TYPE_1__ RtreeCell ;
typedef TYPE_2__ Rtree ;


 scalar_t__ DCOORD (int ) ;

__attribute__((used)) static RtreeDValue cellMargin(Rtree *pRtree, RtreeCell *p){
  RtreeDValue margin = 0;
  int ii = pRtree->nDim2 - 2;
  do{
    margin += (DCOORD(p->aCoord[ii+1]) - DCOORD(p->aCoord[ii]));
    ii -= 2;
  }while( ii>=0 );
  return margin;
}
