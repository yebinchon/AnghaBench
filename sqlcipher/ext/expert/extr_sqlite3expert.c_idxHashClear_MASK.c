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
struct TYPE_7__ {TYPE_1__** aHash; } ;
struct TYPE_6__ {struct TYPE_6__* zVal2; struct TYPE_6__* pHashNext; } ;
typedef  TYPE_1__ IdxHashEntry ;
typedef  TYPE_2__ IdxHash ;

/* Variables and functions */
 int IDX_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(IdxHash *pHash){
  int i;
  for(i=0; i<IDX_HASH_SIZE; i++){
    IdxHashEntry *pEntry;
    IdxHashEntry *pNext;
    for(pEntry=pHash->aHash[i]; pEntry; pEntry=pNext){
      pNext = pEntry->pHashNext;
      FUNC1(pEntry->zVal2);
      FUNC1(pEntry);
    }
  }
  FUNC0(pHash, 0, sizeof(IdxHash));
}