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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZDB_FLAG_BSWAP ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(void *buf, uint64_t size, int flags)
{
	if (flags & ZDB_FLAG_BSWAP)
		FUNC1(buf, size);
	FUNC0(FUNC3(FUNC2(stdout), buf, size) == size);
}