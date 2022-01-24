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
 int CPA_STATUS_INCOMPRESSIBLE ; 
 int CPA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  QAT_COMPRESS ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 scalar_t__ FUNC2 (void*,size_t*,void*,size_t,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,size_t,void*,size_t,size_t*) ; 
 scalar_t__ FUNC4 (size_t) ; 

size_t
FUNC5(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
	int ret;
	zlen_t dstlen = d_len;

	FUNC0(d_len <= s_len);

	/* check if hardware accelerator can be used */
	if (FUNC4(s_len)) {
		ret = FUNC3(QAT_COMPRESS, s_start, s_len, d_start,
		    d_len, &dstlen);
		if (ret == CPA_STATUS_SUCCESS) {
			return ((size_t)dstlen);
		} else if (ret == CPA_STATUS_INCOMPRESSIBLE) {
			if (d_len != s_len)
				return (s_len);

			FUNC1(s_start, d_start, s_len);
			return (s_len);
		}
		/* if hardware compression fails, do it again with software */
	}

	if (FUNC2(d_start, &dstlen, s_start, s_len, n) != Z_OK) {
		if (d_len != s_len)
			return (s_len);

		FUNC1(s_start, d_start, s_len);
		return (s_len);
	}

	return ((size_t)dstlen);
}