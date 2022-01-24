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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__* PDEBUG_MODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

VOID FUNC3( PDEBUG_MODULE pm )
{
	PDEBUG_MODULE pNext = pm;

	FUNC0();

	while( pNext ){
		pNext = pm->next;
		FUNC1( pm );
	}
	FUNC2();
}