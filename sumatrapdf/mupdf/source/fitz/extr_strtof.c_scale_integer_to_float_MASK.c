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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  strtof_fp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 float INFINITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static float
FUNC5(uint32_t M, int N, int negative)
{
	strtof_fp_t result, x, power;

	if (M == 0)
		return negative ? -0.f : 0.f;
	if (N > 38)
	{
		/* Overflow.  */
		errno = ERANGE;
		return negative ? -INFINITY : INFINITY;
	}
	if (N < -54)
	{
		/* Underflow.  */
		errno = ERANGE;
		return negative ? -0.f : 0.f;
	}
	/* If N is in the range {-13, ..., 13} the conversion is exact.
	   Try to scale N into this region.  */
	while (N > 13 && M <= 0xffffffff / 10)
	{
		M *= 10;
		--N;
	}

	while (N < -13 && M % 10 == 0)
	{
		M /= 10;
		++N;
	}

	x = FUNC4 (M);
	if (N >= 0)
	{
		power = FUNC2(N);
		result = FUNC3(x, power);
	}
	else
	{
		power = FUNC2(-N);
		result = FUNC0(x, power);
	}

	return FUNC1(result, negative);
}