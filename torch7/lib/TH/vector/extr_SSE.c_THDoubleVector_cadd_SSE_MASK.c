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
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  y ;
typedef  int /*<<< orphan*/  x ;
typedef  int ptrdiff_t ;
typedef  int n ;
typedef  int /*<<< orphan*/  __m128d ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (double const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(double *z, const double *x, const double *y, const double c, const ptrdiff_t n) {
  ptrdiff_t i;
  __m128d XMM7 = FUNC3(c);
  __m128d XMM0, XMM2;
  for (i=0; i<=((n)-2); i+=2) {
    XMM0 = FUNC1((x)+i);
    XMM2 = FUNC1((y)+i);
    XMM2 = FUNC2(XMM2, XMM7);
    XMM2 = FUNC0(XMM0, XMM2);
    FUNC4((z)+i, XMM2);
  }
  for (; i<(n); i++) {
    z[i] = x[i] + c * y[i];
  }
}