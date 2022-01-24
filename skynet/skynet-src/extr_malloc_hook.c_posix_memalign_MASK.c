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

/* Variables and functions */
 scalar_t__ PREFIX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void**,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

int
FUNC3(void **memptr, size_t alignment, size_t size) {
	int err = FUNC1(memptr, alignment, size + PREFIX_SIZE);
	if (err) FUNC2(size);
	FUNC0(*memptr);
	return err;
}