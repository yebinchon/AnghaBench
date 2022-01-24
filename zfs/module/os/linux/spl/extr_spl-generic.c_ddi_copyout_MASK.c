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
 int FKIOCTL ; 
 int FUNC0 (void const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 

int
FUNC2(const void *from, void *to, size_t len, int flags)
{
	/* Fake ioctl() issued by kernel, 'from' is a kernel address */
	if (flags & FKIOCTL) {
		FUNC1(to, from, len);
		return (0);
	}

	return (FUNC0(from, to, len));
}