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
typedef  int /*<<< orphan*/  const v_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  SYN_PQ_D ; 
 int /*<<< orphan*/  SYN_QR_D ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  SYN_QR_X ; 
 int /*<<< orphan*/  SYN_STRIDE ; 
 size_t TARGET_X ; 
 size_t TARGET_Y ; 

__attribute__((used)) static void
FUNC7(void **c, const void *dc, const size_t tsize,
    const size_t dsize)
{
	v_t *x = (v_t *)c[TARGET_X];
	v_t *y = (v_t *)c[TARGET_Y];
	const v_t * const xend = x + (tsize / sizeof (v_t));
	const v_t *d = (v_t *)dc;
	const v_t * const dend = d + (dsize / sizeof (v_t));

	FUNC6();

	FUNC1();

	for (; d < dend; d += SYN_STRIDE, x += SYN_STRIDE, y += SYN_STRIDE) {
		FUNC0(d, SYN_PQ_D);
		FUNC2(SYN_QR_D, SYN_QR_X, x);
		FUNC4(SYN_QR_D, SYN_QR_X, y);
	}
	for (; x < xend; x += SYN_STRIDE, y += SYN_STRIDE) {
		FUNC3(SYN_QR_X, x);
		FUNC5(SYN_QR_X, y);
	}
}