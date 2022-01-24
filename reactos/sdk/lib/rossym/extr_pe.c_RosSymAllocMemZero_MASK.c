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
typedef  int ulong ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 

void *FUNC2(ulong size, ulong count) {
	void *res = FUNC0(size * count);
	if (res) FUNC1(res, 0, size * count);
	return res;
}