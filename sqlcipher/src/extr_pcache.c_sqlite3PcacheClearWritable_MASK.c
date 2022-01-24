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
struct TYPE_5__ {int /*<<< orphan*/  pDirtyTail; int /*<<< orphan*/  pSynced; TYPE_1__* pDirty; } ;
struct TYPE_4__ {int flags; struct TYPE_4__* pDirtyNext; } ;
typedef  TYPE_1__ PgHdr ;
typedef  TYPE_2__ PCache ;

/* Variables and functions */
 int PGHDR_NEED_SYNC ; 
 int PGHDR_WRITEABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(PCache *pCache){
  PgHdr *p;
  FUNC0(("%p.CLEAR-WRITEABLE\n",pCache));
  for(p=pCache->pDirty; p; p=p->pDirtyNext){
    p->flags &= ~(PGHDR_NEED_SYNC|PGHDR_WRITEABLE);
  }
  pCache->pSynced = pCache->pDirtyTail;
}