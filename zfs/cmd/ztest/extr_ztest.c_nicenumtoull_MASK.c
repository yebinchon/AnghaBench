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

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 double UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 double FUNC1 (int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char*) ; 
 double FUNC3 (char const*,char**) ; 
 int FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC6(const char *buf)
{
	char *end;
	uint64_t val;

	val = FUNC4(buf, &end, 0);
	if (end == buf) {
		(void) FUNC0(stderr, "ztest: bad numeric value: %s\n", buf);
		FUNC5(B_FALSE);
	} else if (end[0] == '.') {
		double fval = FUNC3(buf, &end);
		fval *= FUNC1(2, FUNC2(end));
		if (fval > UINT64_MAX) {
			(void) FUNC0(stderr, "ztest: value too large: %s\n",
			    buf);
			FUNC5(B_FALSE);
		}
		val = (uint64_t)fval;
	} else {
		int shift = FUNC2(end);
		if (shift >= 64 || (val << shift) >> shift != val) {
			(void) FUNC0(stderr, "ztest: value too large: %s\n",
			    buf);
			FUNC5(B_FALSE);
		}
		val <<= shift;
	}
	return (val);
}