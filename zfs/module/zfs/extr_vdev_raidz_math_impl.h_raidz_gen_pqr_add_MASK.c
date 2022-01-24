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
 size_t CODE_R ; 
 int /*<<< orphan*/  GEN_PQR_C ; 
 int /*<<< orphan*/  GEN_PQR_D ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GEN_PQR_STRIDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC8(void **c, const void *dc, const size_t csize,
    const size_t dsize)
{
	v_t *p = (v_t *)c[0];
	v_t *q = (v_t *)c[1];
	v_t *r = (v_t *)c[CODE_R];
	const v_t *d = (v_t *)dc;
	const v_t * const dend = d + (dsize / sizeof (v_t));
	const v_t * const qend = q + (csize / sizeof (v_t));

	FUNC0();

	FUNC2();

	for (; d < dend; d += GEN_PQR_STRIDE, p += GEN_PQR_STRIDE,
	    q += GEN_PQR_STRIDE, r += GEN_PQR_STRIDE) {
		FUNC1(d, GEN_PQR_D);
		FUNC3(GEN_PQR_D, GEN_PQR_C, p);
		FUNC4(GEN_PQR_D, GEN_PQR_C, q);
		FUNC6(GEN_PQR_D, GEN_PQR_C, r);
	}
	for (; q < qend; q += GEN_PQR_STRIDE, r += GEN_PQR_STRIDE) {
		FUNC5(GEN_PQR_C, q);
		FUNC7(GEN_PQR_C, r);
	}
}