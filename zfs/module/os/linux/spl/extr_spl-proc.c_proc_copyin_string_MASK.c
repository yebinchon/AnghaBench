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
 int EINVAL ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(char *kbuffer, int kbuffer_size, const char *ubuffer,
    int ubuffer_size)
{
	int size;

	if (ubuffer_size > kbuffer_size)
		return (-EOVERFLOW);

	if (FUNC0((void *)kbuffer, (void *)ubuffer, ubuffer_size))
		return (-EFAULT);

	/* strip trailing whitespace */
	size = FUNC2(kbuffer, ubuffer_size);
	while (size-- >= 0)
		if (!FUNC1(kbuffer[size]))
			break;

	/* empty string */
	if (size < 0)
		return (-EINVAL);

	/* no space to terminate */
	if (size == kbuffer_size)
		return (-EOVERFLOW);

	kbuffer[size + 1] = 0;
	return (0);
}