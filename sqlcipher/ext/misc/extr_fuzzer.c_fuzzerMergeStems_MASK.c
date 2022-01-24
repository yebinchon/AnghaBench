#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ rCostX; struct TYPE_5__* pNext; } ;
typedef  TYPE_1__ fuzzer_stem ;

/* Variables and functions */

__attribute__((used)) static fuzzer_stem *FUNC0(fuzzer_stem *pA, fuzzer_stem *pB){
  fuzzer_stem head;
  fuzzer_stem *pTail;

  pTail =  &head;
  while( pA && pB ){
    if( pA->rCostX<=pB->rCostX ){
      pTail->pNext = pA;
      pTail = pA;
      pA = pA->pNext;
    }else{
      pTail->pNext = pB;
      pTail = pB;
      pB = pB->pNext;
    }
  }
  if( pA==0 ){
    pTail->pNext = pB;
  }else{
    pTail->pNext = pA;
  }
  return head.pNext;
}