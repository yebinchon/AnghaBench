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
 size_t CODE_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int const,int /*<<< orphan*/ ) ; 
 size_t MUL_PQR_XP ; 
 size_t MUL_PQR_XQ ; 
 size_t MUL_PQR_XR ; 
 size_t MUL_PQR_YP ; 
 size_t MUL_PQR_YQ ; 
 size_t MUL_PQR_YU ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  REC_PQR_STRIDE ; 
 int /*<<< orphan*/  REC_PQR_X ; 
 int /*<<< orphan*/  REC_PQR_XS ; 
 int /*<<< orphan*/  REC_PQR_Y ; 
 int /*<<< orphan*/  REC_PQR_YS ; 
 int /*<<< orphan*/  REC_PQR_Z ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 size_t TARGET_X ; 
 size_t TARGET_Y ; 
 size_t TARGET_Z ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void **t, const size_t tsize, void **c,
    const unsigned * const mul)
{
	v_t *x = (v_t *)t[TARGET_X];
	v_t *y = (v_t *)t[TARGET_Y];
	v_t *z = (v_t *)t[TARGET_Z];
	const v_t * const xend = x + (tsize / sizeof (v_t));
	const v_t *p = (v_t *)c[CODE_P];
	const v_t *q = (v_t *)c[CODE_Q];
	const v_t *r = (v_t *)c[CODE_R];

	FUNC3();

	for (; x < xend; x += REC_PQR_STRIDE, y += REC_PQR_STRIDE,
	    z += REC_PQR_STRIDE, p += REC_PQR_STRIDE, q += REC_PQR_STRIDE,
	    r += REC_PQR_STRIDE) {
		FUNC1(x, REC_PQR_X);
		FUNC1(y, REC_PQR_Y);
		FUNC1(z, REC_PQR_Z);

		FUNC6(p, REC_PQR_X);
		FUNC6(q, REC_PQR_Y);
		FUNC6(r, REC_PQR_Z);

		/* Save Pxyz and Qxyz */
		FUNC0(REC_PQR_X, REC_PQR_XS);
		FUNC0(REC_PQR_Y, REC_PQR_YS);

		/* Calc X */
		FUNC2(mul[MUL_PQR_XP], REC_PQR_X);	/* Xp = Pxyz * xp   */
		FUNC2(mul[MUL_PQR_XQ], REC_PQR_Y);	/* Xq = Qxyz * xq   */
		FUNC5(REC_PQR_Y, REC_PQR_X);
		FUNC2(mul[MUL_PQR_XR], REC_PQR_Z);	/* Xr = Rxyz * xr   */
		FUNC5(REC_PQR_Z, REC_PQR_X);		/* X = Xp + Xq + Xr */
		FUNC4(x, REC_PQR_X);

		/* Calc Y */
		FUNC5(REC_PQR_X, REC_PQR_XS); 		/* Pyz = Pxyz + X */
		FUNC2(mul[MUL_PQR_YU], REC_PQR_X);  	/* Xq = X * upd_q */
		FUNC5(REC_PQR_X, REC_PQR_YS); 		/* Qyz = Qxyz + Xq */
		FUNC0(REC_PQR_XS, REC_PQR_X);		/* restore Pyz */
		FUNC2(mul[MUL_PQR_YP], REC_PQR_X);	/* Yp = Pyz * yp */
		FUNC2(mul[MUL_PQR_YQ], REC_PQR_YS);	/* Yq = Qyz * yq */
		FUNC5(REC_PQR_X, REC_PQR_YS); 		/* Y = Yp + Yq */
		FUNC4(y, REC_PQR_YS);

		/* Calc Z */
		FUNC5(REC_PQR_XS, REC_PQR_YS);		/* Z = Pz = Pyz + Y */
		FUNC4(z, REC_PQR_YS);
	}
}