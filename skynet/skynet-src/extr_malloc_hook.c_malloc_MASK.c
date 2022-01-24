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
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

void *
FUNC3(size_t size) {
	void* ptr = FUNC1(size + PREFIX_SIZE);
	if(!ptr) FUNC2(size);
	return FUNC0(ptr);
}