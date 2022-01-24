#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* pDeferred; } ;
struct TYPE_5__ {int /*<<< orphan*/  pList; struct TYPE_5__* pNext; } ;
typedef  TYPE_1__ Fts3DeferredToken ;
typedef  TYPE_2__ Fts3Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(Fts3Cursor *pCsr){
  Fts3DeferredToken *pDef;
  Fts3DeferredToken *pNext;
  for(pDef=pCsr->pDeferred; pDef; pDef=pNext){
    pNext = pDef->pNext;
    FUNC0(pDef->pList);
    FUNC1(pDef);
  }
  pCsr->pDeferred = 0;
}