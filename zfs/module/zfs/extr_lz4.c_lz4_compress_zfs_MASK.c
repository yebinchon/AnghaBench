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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  bufsiz ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (void*,char*,size_t,size_t) ; 

size_t
FUNC3(void *s_start, void *d_start, size_t s_len,
    size_t d_len, int n)
{
	uint32_t bufsiz;
	char *dest = d_start;

	FUNC0(d_len >= sizeof (bufsiz));

	bufsiz = FUNC2(s_start, &dest[sizeof (bufsiz)], s_len,
	    d_len - sizeof (bufsiz));

	/* Signal an error if the compression routine returned zero. */
	if (bufsiz == 0)
		return (s_len);

	/*
	 * The exact compressed size is needed by the decompression routine,
	 * so it is stored at the start of the buffer. Note that this may be
	 * less than the compressed block size, which is rounded up to a
	 * multiple of 1<<ashift.
	 */
	*(uint32_t *)dest = FUNC1(bufsiz);

	return (bufsiz + sizeof (bufsiz));
}