
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double y; double C; struct TYPE_5__* pNext; } ;
typedef TYPE_1__ GeoSegment ;



__attribute__((used)) static GeoSegment *geopolySegmentMerge(GeoSegment *pLeft, GeoSegment *pRight){
  GeoSegment head, *pLast;
  head.pNext = 0;
  pLast = &head;
  while( pRight && pLeft ){
    double r = pRight->y - pLeft->y;
    if( r==0.0 ) r = pRight->C - pLeft->C;
    if( r<0.0 ){
      pLast->pNext = pRight;
      pLast = pRight;
      pRight = pRight->pNext;
    }else{
      pLast->pNext = pLeft;
      pLast = pLeft;
      pLeft = pLeft->pNext;
    }
  }
  pLast->pNext = pRight ? pRight : pLeft;
  return head.pNext;
}
