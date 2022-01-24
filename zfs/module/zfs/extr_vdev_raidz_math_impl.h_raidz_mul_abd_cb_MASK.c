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
typedef  int /*<<< orphan*/  v_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUL_D ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MUL_STRIDE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *dc, size_t size, void *private)
{
	const unsigned mul = *((unsigned *)private);
	v_t *d = (v_t *)dc;
	size_t i;

	FUNC2();

	for (i = 0; i < size / sizeof (v_t); i += (2 * MUL_STRIDE)) {
		FUNC0(d + i, MUL_D);
		FUNC1(mul, MUL_D);
		FUNC3(d + i, MUL_D);

		FUNC0(d + i + MUL_STRIDE, MUL_D);
		FUNC1(mul, MUL_D);
		FUNC3(d + i + MUL_STRIDE, MUL_D);
	}

	return (0);
}