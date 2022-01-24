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
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

unsigned int FUNC2(const void *addr, unsigned int nbytes)
{
	const unsigned char *cp = addr;
	const __u32 *p;
	unsigned int res = 0;

	while (((((uintptr_t) cp) & 3) != 0) && (nbytes > 0)) {
		res += FUNC1(*cp++);
		nbytes--;
	}
	p = (const __u32 *) cp;

	while (nbytes > 4) {
		res += FUNC0(*p++);
		nbytes -= 4;
	}
	cp = (const unsigned char *) p;

	while (nbytes > 0) {
		res += FUNC1(*cp++);
		nbytes--;
	}
	return res;
}