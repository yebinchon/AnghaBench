#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_4__ {int /*<<< orphan*/ * BaseAddress; scalar_t__ size; struct TYPE_4__* next; } ;
typedef  TYPE_1__* PDEBUG_MODULE ;
typedef  int /*<<< orphan*/  DEBUG_MODULE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC5( PDEBUG_MODULE *ppmodule, ULONG len )
{
	ULONG i;
	PDEBUG_MODULE pNext = NULL, pm = *ppmodule;

	FUNC1();

	FUNC0(pm==NULL);

	for(i=1;i<=len;i++){
		pm = (PDEBUG_MODULE)FUNC2( NonPagedPool, sizeof( DEBUG_MODULE ) );
		if( !pm ){
			FUNC3(pNext);
			return FALSE;
		}
		pm->next = pNext;
		pm->size = 0;
		pm->BaseAddress = NULL;
		//DbgPrint("len1: %d\n", pm->name.Length);
		pNext = pm;
	}
	*ppmodule = pm;

	FUNC4();

	return TRUE;
}