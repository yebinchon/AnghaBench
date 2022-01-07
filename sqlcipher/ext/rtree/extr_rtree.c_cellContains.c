
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ eCoordType; int nDim2; } ;
struct TYPE_8__ {TYPE_1__* aCoord; } ;
struct TYPE_7__ {scalar_t__ f; scalar_t__ i; } ;
typedef TYPE_1__ RtreeCoord ;
typedef TYPE_2__ RtreeCell ;
typedef TYPE_3__ Rtree ;


 scalar_t__ RTREE_COORD_INT32 ;

__attribute__((used)) static int cellContains(Rtree *pRtree, RtreeCell *p1, RtreeCell *p2){
  int ii;
  int isInt = (pRtree->eCoordType==RTREE_COORD_INT32);
  for(ii=0; ii<pRtree->nDim2; ii+=2){
    RtreeCoord *a1 = &p1->aCoord[ii];
    RtreeCoord *a2 = &p2->aCoord[ii];
    if( (!isInt && (a2[0].f<a1[0].f || a2[1].f>a1[1].f))
     || ( isInt && (a2[0].i<a1[0].i || a2[1].i>a1[1].i))
    ){
      return 0;
    }
  }
  return 1;
}
