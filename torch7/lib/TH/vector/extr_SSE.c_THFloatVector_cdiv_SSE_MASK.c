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
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(float *z, const float *x, const float *y, const ptrdiff_t n) {
  ptrdiff_t i;
  __m128 XMM0, XMM1, XMM2, XMM3;
  for (i=0; i<=((n)-8); i+=8) {
    XMM0 = FUNC1(x+i);
    XMM1 = FUNC1(x+i+4);
    XMM2 = FUNC1(y+i);
    XMM3 = FUNC1(y+i+4);
    XMM2 = FUNC0(XMM0, XMM2);
    XMM3 = FUNC0(XMM1, XMM3);
    FUNC2(z+i, XMM2);
    FUNC2(z+i+4, XMM3);
  }
  for (; i<(n); i++) {
    z[i] = x[i] / y[i];
  }
}