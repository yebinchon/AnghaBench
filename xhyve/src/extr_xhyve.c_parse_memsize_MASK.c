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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 size_t MB ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const char *opt, size_t *ret_memsize)
{
	char *endptr;
	size_t optval;
	int error;

	optval = FUNC1(opt, &endptr, 0);
	if (*opt != '\0' && *endptr == '\0') {
		/*
		 * For the sake of backward compatibility if the memory size
		 * specified on the command line is less than a megabyte then
		 * it is interpreted as being in units of MB.
		 */
		if (optval < MB)
			optval *= MB;
		*ret_memsize = optval;
		error = 0;
	} else
		error = FUNC0(opt, ((uint64_t *) ret_memsize));

	return (error);
}