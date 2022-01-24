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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZERO_D ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int ZERO_STRIDE ; 

__attribute__((used)) static int
FUNC3(void *dc, size_t dsize, void *private)
{
	v_t *dst = (v_t *)dc;
	size_t i;

	FUNC2();

	(void) private; /* unused */

	FUNC1(ZERO_D);

	for (i = 0; i < dsize / sizeof (v_t); i += (2 * ZERO_STRIDE)) {
		FUNC0(dst + i, ZERO_D);
		FUNC0(dst + i + ZERO_STRIDE, ZERO_D);
	}

	return (0);
}