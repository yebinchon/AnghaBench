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
 int EFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(char *ubuffer, int ubuffer_size, const char *kbuffer,
    char *append)
{
	/*
	 * NB if 'append' != NULL, it's a single character to append to the
	 * copied out string - usually "\n", for /proc entries and
	 * (i.e. a terminating zero byte) for sysctl entries
	 */
	int size = FUNC0(FUNC2(kbuffer), ubuffer_size);

	if (FUNC1(ubuffer, kbuffer, size))
		return (-EFAULT);

	if (append != NULL && size < ubuffer_size) {
		if (FUNC1(ubuffer + size, append, 1))
			return (-EFAULT);

		size++;
	}

	return (size);
}