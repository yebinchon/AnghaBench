
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_8__ {int nDim; scalar_t__ eCoordType; } ;
struct TYPE_7__ {TYPE_1__* aCoord; } ;
struct TYPE_6__ {int i; scalar_t__ f; } ;
typedef scalar_t__ RtreeDValue ;
typedef TYPE_2__ RtreeCell ;
typedef TYPE_3__ Rtree ;


 scalar_t__ RTREE_COORD_REAL32 ;
 int assert (int) ;

__attribute__((used)) static RtreeDValue cellArea(Rtree *pRtree, RtreeCell *p){
  RtreeDValue area = (RtreeDValue)1;
  assert( pRtree->nDim>=1 && pRtree->nDim<=5 );

  if( pRtree->eCoordType==RTREE_COORD_REAL32 ){
    switch( pRtree->nDim ){
      case 5: area = p->aCoord[9].f - p->aCoord[8].f;
      case 4: area *= p->aCoord[7].f - p->aCoord[6].f;
      case 3: area *= p->aCoord[5].f - p->aCoord[4].f;
      case 2: area *= p->aCoord[3].f - p->aCoord[2].f;
      default: area *= p->aCoord[1].f - p->aCoord[0].f;
    }
  }else

  {
    switch( pRtree->nDim ){
      case 5: area = (i64)p->aCoord[9].i - (i64)p->aCoord[8].i;
      case 4: area *= (i64)p->aCoord[7].i - (i64)p->aCoord[6].i;
      case 3: area *= (i64)p->aCoord[5].i - (i64)p->aCoord[4].i;
      case 2: area *= (i64)p->aCoord[3].i - (i64)p->aCoord[2].i;
      default: area *= (i64)p->aCoord[1].i - (i64)p->aCoord[0].i;
    }
  }
  return area;
}
