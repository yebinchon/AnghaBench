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
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 void* FUNC4 (size_t) ; 

void *
FUNC5(void *ptr, size_t size) {
	if (ptr == NULL) return FUNC4(size);

	void* rawptr = FUNC0(ptr);
	void *newptr = FUNC2(rawptr, size+PREFIX_SIZE);
	if(!newptr) FUNC3(size);
	return FUNC1(newptr);
}