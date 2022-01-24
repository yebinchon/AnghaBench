#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nSlot; scalar_t__ nEntry; TYPE_1__** aSlot; } ;
struct TYPE_6__ {struct TYPE_6__* pHashNext; } ;
typedef  TYPE_1__ Fts5HashEntry ;
typedef  TYPE_2__ Fts5Hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(Fts5Hash *pHash){
  int i;
  for(i=0; i<pHash->nSlot; i++){
    Fts5HashEntry *pNext;
    Fts5HashEntry *pSlot;
    for(pSlot=pHash->aSlot[i]; pSlot; pSlot=pNext){
      pNext = pSlot->pHashNext;
      FUNC1(pSlot);
    }
  }
  FUNC0(pHash->aSlot, 0, pHash->nSlot * sizeof(Fts5HashEntry*));
  pHash->nEntry = 0;
}