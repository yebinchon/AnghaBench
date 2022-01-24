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
typedef  int /*<<< orphan*/  uchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int EBADF ; 
 int ERANGE ; 
 int U8_CANON_COMP ; 
 int U8_CANON_DECOMP ; 
 int U8_COMPAT_DECOMP ; 
 int U8_STRCMP_CI_LOWER ; 
 int U8_STRCMP_CI_UPPER ; 
 int U8_STRCMP_CS ; 
 int U8_STRCMP_NFC ; 
 int U8_STRCMP_NFD ; 
 int U8_STRCMP_NFKC ; 
 int U8_STRCMP_NFKD ; 
 size_t U8_UNICODE_LATEST ; 
 int FUNC0 (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int,int*) ; 
 int FUNC2 (char const*,char const*) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (char const*,char const*,size_t) ; 

int
FUNC5(const char *s1, const char *s2, size_t n, int flag, size_t uv,
    int *errnum)
{
	int f;
	size_t n1;
	size_t n2;

	*errnum = 0;

	/*
	 * Check on the requested Unicode version, case conversion, and
	 * normalization flag values.
	 */

	if (uv > U8_UNICODE_LATEST) {
		*errnum = ERANGE;
		uv = U8_UNICODE_LATEST;
	}

	if (flag == 0) {
		flag = U8_STRCMP_CS;
	} else {
		f = flag & (U8_STRCMP_CS | U8_STRCMP_CI_UPPER |
		    U8_STRCMP_CI_LOWER);
		if (f == 0) {
			flag |= U8_STRCMP_CS;
		} else if (f != U8_STRCMP_CS && f != U8_STRCMP_CI_UPPER &&
		    f != U8_STRCMP_CI_LOWER) {
			*errnum = EBADF;
			flag = U8_STRCMP_CS;
		}

		f = flag & (U8_CANON_DECOMP | U8_COMPAT_DECOMP | U8_CANON_COMP);
		if (f && f != U8_STRCMP_NFD && f != U8_STRCMP_NFC &&
		    f != U8_STRCMP_NFKD && f != U8_STRCMP_NFKC) {
			*errnum = EBADF;
			flag = U8_STRCMP_CS;
		}
	}

	if (flag == U8_STRCMP_CS) {
		return (n == 0 ? FUNC2(s1, s2) : FUNC4(s1, s2, n));
	}

	n1 = FUNC3(s1);
	n2 = FUNC3(s2);
	if (n != 0) {
		if (n < n1)
			n1 = n;
		if (n < n2)
			n2 = n;
	}

	/*
	 * Simple case conversion can be done much faster and so we do
	 * them separately here.
	 */
	if (flag == U8_STRCMP_CI_UPPER) {
		return (FUNC0(uv, (uchar_t *)s1, (uchar_t *)s2,
		    n1, n2, B_TRUE, errnum));
	} else if (flag == U8_STRCMP_CI_LOWER) {
		return (FUNC0(uv, (uchar_t *)s1, (uchar_t *)s2,
		    n1, n2, B_FALSE, errnum));
	}

	return (FUNC1(uv, (uchar_t *)s1, (uchar_t *)s2, n1, n2,
	    flag, errnum));
}