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
typedef  scalar_t__ y ;
typedef  scalar_t__ x ;
typedef  int ptrdiff_t ;
typedef  int n ;
typedef  int /*<<< orphan*/  __m128d ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (double const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(double *y, const double *x, const double c, const ptrdiff_t n) {
  ptrdiff_t i;
  __m128d XMM15 = FUNC2(c);
  for (i=0; i<=((n)-8); i+=8) {
    __m128d XMM0 = FUNC0((x)+i  );
    __m128d XMM1 = FUNC0((x)+i+2);
    __m128d XMM2 = FUNC0((x)+i+4);
    __m128d XMM3 = FUNC0((x)+i+6);
    __m128d XMM4 = FUNC1(XMM15, XMM0);
    __m128d XMM5 = FUNC1(XMM15, XMM1);
    __m128d XMM6 = FUNC1(XMM15, XMM2);
    __m128d XMM7 = FUNC1(XMM15, XMM3);
    FUNC3((y)+i  , XMM4);
    FUNC3((y)+i+2, XMM5);
    FUNC3((y)+i+4, XMM6);
    FUNC3((y)+i+6, XMM7);
  }
  for (; i<(n); i++) {
    y[i] = x[i] * c;
  }
}