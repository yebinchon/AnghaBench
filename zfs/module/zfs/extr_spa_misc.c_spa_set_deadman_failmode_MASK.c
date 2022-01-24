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
struct TYPE_3__ {void* spa_deadman_failmode; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 void* ZIO_FAILURE_MODE_CONTINUE ; 
 void* ZIO_FAILURE_MODE_PANIC ; 
 void* ZIO_FAILURE_MODE_WAIT ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

void
FUNC1(spa_t *spa, const char *failmode)
{
	if (FUNC0(failmode, "wait") == 0)
		spa->spa_deadman_failmode = ZIO_FAILURE_MODE_WAIT;
	else if (FUNC0(failmode, "continue") == 0)
		spa->spa_deadman_failmode = ZIO_FAILURE_MODE_CONTINUE;
	else if (FUNC0(failmode, "panic") == 0)
		spa->spa_deadman_failmode = ZIO_FAILURE_MODE_PANIC;
	else
		spa->spa_deadman_failmode = ZIO_FAILURE_MODE_WAIT;
}