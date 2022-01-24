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
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  FLT_MAX ; 
 scalar_t__ errno ; 
 float FUNC0 (float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (float) ; 

float FUNC3(const char *s)
{
	float result;

	if (s == NULL)
		return 0;

	errno = 0;
	result = FUNC1(s, NULL);
	if ((errno == ERANGE && result == 0) || FUNC2(result))
		/* Return 1.0 on  underflow, as it's a small known value that won't cause a divide by 0.  */
		return 1;
	result = FUNC0(result, -FLT_MAX, FLT_MAX);
	return result;
}