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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,long,long,long,long) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*,long,long,long,long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCPUFeature_AVX ; 

void FUNC3(float* output, float* input, float* kernel, long outRows, long outCols, long inCols) {
#if defined(__AVX__)
  int avx = haveCPUFeature(kCPUFeature_AVX);
  if (avx)
  {
    convolve_5x5_avx(output, input, kernel, outRows, outCols, outCols, inCols);
  }
  else
#endif
  {
    FUNC1(output, input, kernel, outRows, outCols, outCols, inCols);
  }
}