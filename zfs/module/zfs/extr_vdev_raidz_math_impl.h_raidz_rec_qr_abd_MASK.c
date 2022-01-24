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
 size_t MUL_QR_X ; 
 size_t MUL_QR_XQ ; 
 size_t MUL_QR_Y ; 
 size_t MUL_QR_YQ ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  REC_QR_STRIDE ; 
 int /*<<< orphan*/  REC_QR_T ; 
 int /*<<< orphan*/  REC_QR_X ; 
 int /*<<< orphan*/  REC_QR_Y ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 size_t TARGET_X ; 
 size_t TARGET_Y ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void **t, const size_t tsize, void **c,
    const unsigned *mul)
{
	v_t *x = (v_t *)t[TARGET_X];
	v_t *y = (v_t *)t[TARGET_Y];
	const v_t * const xend = x + (tsize / sizeof (v_t));
	const v_t *p = (v_t *)c[CODE_P];
	const v_t *q = (v_t *)c[CODE_Q];

	FUNC3();

	for (; x < xend; x += REC_QR_STRIDE, y += REC_QR_STRIDE,
	    p += REC_QR_STRIDE, q += REC_QR_STRIDE) {
		FUNC1(x, REC_QR_X);
		FUNC1(y, REC_QR_Y);

		FUNC6(p, REC_QR_X);
		FUNC6(q, REC_QR_Y);

		/* Save Pxy */
		FUNC0(REC_QR_X,  REC_QR_T);

		/* Calc X */
		FUNC2(mul[MUL_QR_XQ], REC_QR_X);	/* X = Q * xqm */
		FUNC5(REC_QR_Y, REC_QR_X);	/* X = R ^ X   */
		FUNC2(mul[MUL_QR_X], REC_QR_X);	/* X = X * xm  */
		FUNC4(x, REC_QR_X);

		/* Calc Y */
		FUNC2(mul[MUL_QR_YQ], REC_QR_T);	/* X = Q * xqm */
		FUNC5(REC_QR_Y, REC_QR_T);	/* X = R ^ X   */
		FUNC2(mul[MUL_QR_Y], REC_QR_T);	/* X = X * xm  */
		FUNC4(y, REC_QR_T);
	}
}