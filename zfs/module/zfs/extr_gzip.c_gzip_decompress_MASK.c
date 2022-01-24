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
typedef  size_t zlen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CPA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  QAT_DECOMPRESS ; 
 scalar_t__ Z_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,size_t,void*,size_t,size_t*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (void*,size_t*,void*,size_t) ; 

int
FUNC4(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
	zlen_t dstlen = d_len;

	FUNC0(d_len >= s_len);

	/* check if hardware accelerator can be used */
	if (FUNC2(d_len)) {
		if (FUNC1(QAT_DECOMPRESS, s_start, s_len,
		    d_start, d_len, &dstlen) == CPA_STATUS_SUCCESS)
			return (0);
		/* if hardware de-compress fail, do it again with software */
	}

	if (FUNC3(d_start, &dstlen, s_start, s_len) != Z_OK)
		return (-1);

	return (0);
}