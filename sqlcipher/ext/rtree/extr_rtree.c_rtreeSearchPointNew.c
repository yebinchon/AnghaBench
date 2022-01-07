
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_10__ {scalar_t__ rScore; size_t iLevel; } ;
struct TYPE_11__ {int bPoint; scalar_t__* aNode; TYPE_1__ sPoint; TYPE_1__* aPoint; int * anQueue; } ;
typedef TYPE_1__ RtreeSearchPoint ;
typedef scalar_t__ RtreeDValue ;
typedef TYPE_2__ RtreeCursor ;


 int RTREE_CACHE_SZ ;
 int RTREE_OF_CURSOR (TYPE_2__*) ;
 int assert (int) ;
 int nodeRelease (int ,scalar_t__) ;
 TYPE_1__* rtreeEnqueue (TYPE_2__*,scalar_t__,size_t) ;
 TYPE_1__* rtreeSearchPointFirst (TYPE_2__*) ;

__attribute__((used)) static RtreeSearchPoint *rtreeSearchPointNew(
  RtreeCursor *pCur,
  RtreeDValue rScore,
  u8 iLevel
){
  RtreeSearchPoint *pNew, *pFirst;
  pFirst = rtreeSearchPointFirst(pCur);
  pCur->anQueue[iLevel]++;
  if( pFirst==0
   || pFirst->rScore>rScore
   || (pFirst->rScore==rScore && pFirst->iLevel>iLevel)
  ){
    if( pCur->bPoint ){
      int ii;
      pNew = rtreeEnqueue(pCur, rScore, iLevel);
      if( pNew==0 ) return 0;
      ii = (int)(pNew - pCur->aPoint) + 1;
      if( ii<RTREE_CACHE_SZ ){
        assert( pCur->aNode[ii]==0 );
        pCur->aNode[ii] = pCur->aNode[0];
      }else{
        nodeRelease(RTREE_OF_CURSOR(pCur), pCur->aNode[0]);
      }
      pCur->aNode[0] = 0;
      *pNew = pCur->sPoint;
    }
    pCur->sPoint.rScore = rScore;
    pCur->sPoint.iLevel = iLevel;
    pCur->bPoint = 1;
    return &pCur->sPoint;
  }else{
    return rtreeEnqueue(pCur, rScore, iLevel);
  }
}
