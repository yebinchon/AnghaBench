
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x; struct TYPE_5__* pNext; } ;
typedef TYPE_1__ GeoEvent ;



__attribute__((used)) static GeoEvent *geopolyEventMerge(GeoEvent *pLeft, GeoEvent *pRight){
  GeoEvent head, *pLast;
  head.pNext = 0;
  pLast = &head;
  while( pRight && pLeft ){
    if( pRight->x <= pLeft->x ){
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
