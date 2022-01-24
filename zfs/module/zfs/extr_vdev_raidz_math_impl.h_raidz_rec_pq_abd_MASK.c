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
 size_t CODE_P ; 
 size_t CODE_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int const,int /*<<< orphan*/ ) ; 
 size_t MUL_PQ_X ; 
 size_t MUL_PQ_Y ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  REC_PQ_STRIDE ; 
 int /*<<< orphan*/  REC_PQ_T ; 
 int /*<<< orphan*/  REC_PQ_X ; 
 int /*<<< orphan*/  REC_PQ_Y ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 size_t TARGET_X ; 
 size_t TARGET_Y ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void **tc, const size_t tsize, void **c,
    const unsigned *mul)
{
	v_t *x = (v_t *)tc[TARGET_X];
	v_t *y = (v_t *)tc[TARGET_Y];
	const v_t * const xend = x + (tsize / sizeof (v_t));
	const v_t *p = (v_t *)c[CODE_P];
	const v_t *q = (v_t *)c[CODE_Q];

	FUNC3();

	for (; x < xend; x += REC_PQ_STRIDE, y += REC_PQ_STRIDE,
	    p += REC_PQ_STRIDE, q += REC_PQ_STRIDE) {
		FUNC1(x, REC_PQ_X);
		FUNC1(y, REC_PQ_Y);

		FUNC6(p, REC_PQ_X);
		FUNC6(q, REC_PQ_Y);

		/* Save Pxy */
		FUNC0(REC_PQ_X,  REC_PQ_T);

		/* Calc X */
		FUNC2(mul[MUL_PQ_X], REC_PQ_X);
		FUNC2(mul[MUL_PQ_Y], REC_PQ_Y);
		FUNC5(REC_PQ_Y,  REC_PQ_X);
		FUNC4(x, REC_PQ_X);

		/* Calc Y */
		FUNC5(REC_PQ_T,  REC_PQ_X);
		FUNC4(y, REC_PQ_X);
	}
}