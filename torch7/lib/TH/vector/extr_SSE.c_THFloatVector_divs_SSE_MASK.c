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
typedef  int ptrdiff_t ;
typedef  int n ;
typedef  int /*<<< orphan*/  __m128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float const*) ; 
 int /*<<< orphan*/  FUNC2 (float const) ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(float *y, const float *x, const float c, const ptrdiff_t n) {
  ptrdiff_t i;
  __m128 XMM7 = FUNC2(c);
  __m128 XMM0, XMM1;
  for (i=0; i<=((n)-8); i+=8) {
    XMM0 = FUNC1(x+i);
    XMM1 = FUNC1(x+i+4);
    XMM0 = FUNC0(XMM0, XMM7);
    XMM1 = FUNC0(XMM1, XMM7);
    FUNC3(y+i, XMM0);
    FUNC3(y+i+4, XMM1);
  }
  for (; i<(n); i++) {
    y[i] = x[i] / c;
  }
}