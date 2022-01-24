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
typedef  size_t uint16 ;
struct TYPE_5__ {int /*<<< orphan*/ ** cursorcache; } ;
struct TYPE_6__ {TYPE_1__ cache; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/ * HCURSOR ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void
FUNC3(RDPCLIENT * This, uint16 cache_idx, HCURSOR cursor)
{
	HCURSOR old;

	if (cache_idx < FUNC0(This->cache.cursorcache))
	{
		old = This->cache.cursorcache[cache_idx];
		if (old != NULL)
			FUNC2(This, old);

		This->cache.cursorcache[cache_idx] = cursor;
	}
	else
	{
		FUNC1("put cursor %d\n", cache_idx);
	}
}