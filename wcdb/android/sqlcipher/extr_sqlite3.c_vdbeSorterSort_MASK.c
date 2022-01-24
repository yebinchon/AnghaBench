#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_18__ {TYPE_2__* pUnpacked; int /*<<< orphan*/  pSorter; int /*<<< orphan*/  xCompare; } ;
struct TYPE_17__ {TYPE_3__* pList; int /*<<< orphan*/ * aMemory; } ;
struct TYPE_14__ {size_t iNext; TYPE_3__* pNext; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
struct TYPE_15__ {int errCode; } ;
typedef  TYPE_3__ SorterRecord ;
typedef  TYPE_4__ SorterList ;
typedef  TYPE_5__ SortSubtask ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (TYPE_5__*,TYPE_3__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC7(SortSubtask *pTask, SorterList *pList){
  int i;
  SorterRecord **aSlot;
  SorterRecord *p;
  int rc;

  rc = FUNC4(pTask);
  if( rc!=SQLITE_OK ) return rc;

  p = pList->pList;
  pTask->xCompare = FUNC5(pTask->pSorter);

  aSlot = (SorterRecord **)FUNC2(64 * sizeof(SorterRecord *));
  if( !aSlot ){
    return SQLITE_NOMEM_BKPT;
  }

  while( p ){
    SorterRecord *pNext;
    if( pList->aMemory ){
      if( (u8*)p==pList->aMemory ){
        pNext = 0;
      }else{
        FUNC0( p->u.iNext<FUNC1(pList->aMemory) );
        pNext = (SorterRecord*)&pList->aMemory[p->u.iNext];
      }
    }else{
      pNext = p->u.pNext;
    }

    p->u.pNext = 0;
    for(i=0; aSlot[i]; i++){
      p = FUNC6(pTask, p, aSlot[i]);
      aSlot[i] = 0;
    }
    aSlot[i] = p;
    p = pNext;
  }

  p = 0;
  for(i=0; i<64; i++){
    if( aSlot[i]==0 ) continue;
    p = p ? FUNC6(pTask, p, aSlot[i]) : aSlot[i];
  }
  pList->pList = p;

  FUNC3(aSlot);
  FUNC0( pTask->pUnpacked->errCode==SQLITE_OK 
       || pTask->pUnpacked->errCode==SQLITE_NOMEM 
  );
  return pTask->pUnpacked->errCode;
}