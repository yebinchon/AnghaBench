
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_11__ {int nPoint; int nPointAlloc; TYPE_1__* aPoint; } ;
struct TYPE_10__ {scalar_t__ iLevel; int rScore; } ;
typedef TYPE_1__ RtreeSearchPoint ;
typedef int RtreeDValue ;
typedef TYPE_2__ RtreeCursor ;


 scalar_t__ RTREE_MAX_DEPTH ;
 int assert (int) ;
 scalar_t__ rtreeSearchPointCompare (TYPE_1__*,TYPE_1__*) ;
 int rtreeSearchPointSwap (TYPE_2__*,int,int) ;
 TYPE_1__* sqlite3_realloc64 (TYPE_1__*,int) ;

__attribute__((used)) static RtreeSearchPoint *rtreeEnqueue(
  RtreeCursor *pCur,
  RtreeDValue rScore,
  u8 iLevel
){
  int i, j;
  RtreeSearchPoint *pNew;
  if( pCur->nPoint>=pCur->nPointAlloc ){
    int nNew = pCur->nPointAlloc*2 + 8;
    pNew = sqlite3_realloc64(pCur->aPoint, nNew*sizeof(pCur->aPoint[0]));
    if( pNew==0 ) return 0;
    pCur->aPoint = pNew;
    pCur->nPointAlloc = nNew;
  }
  i = pCur->nPoint++;
  pNew = pCur->aPoint + i;
  pNew->rScore = rScore;
  pNew->iLevel = iLevel;
  assert( iLevel<=RTREE_MAX_DEPTH );
  while( i>0 ){
    RtreeSearchPoint *pParent;
    j = (i-1)/2;
    pParent = pCur->aPoint + j;
    if( rtreeSearchPointCompare(pNew, pParent)>=0 ) break;
    rtreeSearchPointSwap(pCur, j, i);
    i = j;
    pNew = pParent;
  }
  return pNew;
}
