#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  PagedPool ; 

void * FUNC2( size_t numBytes, BOOLEAN fromPaged )
{
	void* res = FUNC1( (fromPaged)?PagedPool:NonPagedPool, numBytes );
	FUNC0(res);
	return res;
}