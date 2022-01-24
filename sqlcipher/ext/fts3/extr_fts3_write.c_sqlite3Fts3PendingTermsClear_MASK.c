#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nIndex; scalar_t__ nPendingData; TYPE_1__* aIndex; } ;
struct TYPE_4__ {int /*<<< orphan*/  hPending; } ;
typedef  int /*<<< orphan*/  PendingList ;
typedef  TYPE_2__ Fts3Table ;
typedef  int /*<<< orphan*/  Fts3HashElem ;
typedef  int /*<<< orphan*/  Fts3Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(Fts3Table *p){
  int i;
  for(i=0; i<p->nIndex; i++){
    Fts3HashElem *pElem;
    Fts3Hash *pHash = &p->aIndex[i].hPending;
    for(pElem=FUNC2(pHash); pElem; pElem=FUNC3(pElem)){
      PendingList *pList = (PendingList *)FUNC1(pElem);
      FUNC4(pList);
    }
    FUNC0(pHash);
  }
  p->nPendingData = 0;
}