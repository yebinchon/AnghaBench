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
struct TYPE_5__ {int /*<<< orphan*/  pRange; int /*<<< orphan*/  pEq; int /*<<< orphan*/  pOrder; struct TYPE_5__* pNextScan; } ;
typedef  TYPE_1__ IdxScan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(IdxScan *pScan, IdxScan *pLast){
  IdxScan *p;
  IdxScan *pNext;
  for(p=pScan; p!=pLast; p=pNext){
    pNext = p->pNextScan;
    FUNC0(p->pOrder);
    FUNC0(p->pEq);
    FUNC0(p->pRange);
    FUNC1(p);
  }
}