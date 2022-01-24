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
 int /*<<< orphan*/  ADD_D ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int ADD_STRIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *dc, void *sc, size_t size, void *private)
{
	v_t *dst = (v_t *)dc;
	const v_t *src = (v_t *)sc;
	size_t i;

	FUNC0();

	(void) private; /* unused */

	for (i = 0; i < size / sizeof (v_t); i += (2 * ADD_STRIDE)) {
		FUNC1(dst + i, ADD_D);
		FUNC3(src + i, ADD_D);
		FUNC2(dst + i, ADD_D);

		FUNC1(dst + i + ADD_STRIDE, ADD_D);
		FUNC3(src + i + ADD_STRIDE, ADD_D);
		FUNC2(dst + i + ADD_STRIDE, ADD_D);
	}

	return (0);
}