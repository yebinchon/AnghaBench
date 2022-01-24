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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

uint64_t
FUNC2(uint64_t range)
{
	uint64_t r;

	FUNC0(range != 0);

	if (range == 1)
		return (0);

	(void) FUNC1((void *)&r, sizeof (uint64_t));

	return (r % range);
}