
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* pNext; } ;
typedef TYPE_1__ EditDist3Cost ;


 scalar_t__ editDist3CostCompare (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static EditDist3Cost *editDist3CostMerge(
  EditDist3Cost *pA,
  EditDist3Cost *pB
){
  EditDist3Cost *pHead = 0;
  EditDist3Cost **ppTail = &pHead;
  EditDist3Cost *p;
  while( pA && pB ){
    if( editDist3CostCompare(pA,pB)<=0 ){
      p = pA;
      pA = pA->pNext;
    }else{
      p = pB;
      pB = pB->pNext;
    }
    *ppTail = p;
    ppTail = &p->pNext;
  }
  if( pA ){
    *ppTail = pA;
  }else{
    *ppTail = pB;
  }
  return pHead;
}
