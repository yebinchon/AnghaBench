
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ eCoordType; int nDim2; } ;
struct TYPE_8__ {TYPE_1__* aCoord; } ;
struct TYPE_7__ {void* i; void* f; } ;
typedef TYPE_2__ RtreeCell ;
typedef TYPE_3__ Rtree ;


 void* MAX (void*,void*) ;
 void* MIN (void*,void*) ;
 scalar_t__ RTREE_COORD_REAL32 ;

__attribute__((used)) static void cellUnion(Rtree *pRtree, RtreeCell *p1, RtreeCell *p2){
  int ii = 0;
  if( pRtree->eCoordType==RTREE_COORD_REAL32 ){
    do{
      p1->aCoord[ii].f = MIN(p1->aCoord[ii].f, p2->aCoord[ii].f);
      p1->aCoord[ii+1].f = MAX(p1->aCoord[ii+1].f, p2->aCoord[ii+1].f);
      ii += 2;
    }while( ii<pRtree->nDim2 );
  }else{
    do{
      p1->aCoord[ii].i = MIN(p1->aCoord[ii].i, p2->aCoord[ii].i);
      p1->aCoord[ii+1].i = MAX(p1->aCoord[ii+1].i, p2->aCoord[ii+1].i);
      ii += 2;
    }while( ii<pRtree->nDim2 );
  }
}
