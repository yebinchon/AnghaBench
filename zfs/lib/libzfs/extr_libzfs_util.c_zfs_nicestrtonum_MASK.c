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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 double UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 double FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 double FUNC3 (char const*,char**) ; 
 int FUNC4 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

int
FUNC6(libzfs_handle_t *hdl, const char *value, uint64_t *num)
{
	char *end;
	int shift;

	*num = 0;

	/* Check to see if this looks like a number.  */
	if ((value[0] < '0' || value[0] > '9') && value[0] != '.') {
		if (hdl)
			FUNC5(hdl, FUNC0(TEXT_DOMAIN,
			    "bad numeric value '%s'"), value);
		return (-1);
	}

	/* Rely on strtoull() to process the numeric portion.  */
	errno = 0;
	*num = FUNC4(value, &end, 10);

	/*
	 * Check for ERANGE, which indicates that the value is too large to fit
	 * in a 64-bit value.
	 */
	if (errno == ERANGE) {
		if (hdl)
			FUNC5(hdl, FUNC0(TEXT_DOMAIN,
			    "numeric value is too large"));
		return (-1);
	}

	/*
	 * If we have a decimal value, then do the computation with floating
	 * point arithmetic.  Otherwise, use standard arithmetic.
	 */
	if (*end == '.') {
		double fval = FUNC3(value, &end);

		if ((shift = FUNC2(hdl, end)) == -1)
			return (-1);

		fval *= FUNC1(2, shift);

		if (fval > UINT64_MAX) {
			if (hdl)
				FUNC5(hdl, FUNC0(TEXT_DOMAIN,
				    "numeric value is too large"));
			return (-1);
		}

		*num = (uint64_t)fval;
	} else {
		if ((shift = FUNC2(hdl, end)) == -1)
			return (-1);

		/* Check for overflow */
		if (shift >= 64 || (*num << shift) >> shift != *num) {
			if (hdl)
				FUNC5(hdl, FUNC0(TEXT_DOMAIN,
				    "numeric value is too large"));
			return (-1);
		}

		*num <<= shift;
	}

	return (0);
}