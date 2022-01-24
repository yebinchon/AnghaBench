#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {scalar_t__ Peb; } ;
typedef  scalar_t__ PPEB ;
typedef  TYPE_1__* PEPROCESS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  pdebug_module_head ; 
 int /*<<< orphan*/  pdebug_module_tail ; 

BOOLEAN FUNC7( void )
{
 	PPEB peb;
	PEPROCESS tsk;
	FUNC1();

	pdebug_module_tail = pdebug_module_head;
	tsk = FUNC2();
	FUNC0(FUNC3((ULONG)tsk));
	if( tsk  ){
		peb = tsk->Peb;
		if( peb ){
			if( !FUNC6( peb ) ){
				FUNC4();
				return FALSE;
			}
		}
	}
	if( !FUNC5() ){
		FUNC4();
		return FALSE;
	}
	FUNC4();
	return TRUE;
}