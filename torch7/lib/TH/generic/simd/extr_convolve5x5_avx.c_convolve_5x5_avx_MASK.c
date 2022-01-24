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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*,long,long,long) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*,long,long,long) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,float*,long,long,long) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,float*,long,long,long) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,float*,long,long,long) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*,float*,long,long,long) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,float*,long,long,long) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,float*,long,long,long) ; 
 int /*<<< orphan*/  FUNC9 (float*,float*,float*,long,long,long,long) ; 

void FUNC10(float* output, float* input, float* kernel, long outRows, long outCols, long outStride, long inCols) {
  long ic = inCols;
  long yy = 0;
  float* t_ = input;
  float* r_ = output;
  float* k_ = kernel;

  if((outRows == 64) && (outCols == 64)) {
    FUNC6(output, input, kernel, outRows, outStride, inCols);
    return;
  }

  if((outRows == 32) && (outCols == 32)) {
    FUNC4(output, input, kernel, outRows, outStride, inCols);
    return;
  }

  if((outRows == 16) && (outCols == 16)) {
    FUNC1(output, input, kernel, outRows, outStride, inCols);
    return;
  }

  if((outRows == 8) && (outCols == 8)) {
    FUNC8(output, input, kernel, outRows, outStride, inCols);
    return;
  }

  for(; yy < (outRows / 6 ) * 6; yy += 6) {
    float *pi_ = t_ + yy*ic;
    float *pw_ = k_;
    float *pis_ = pi_;
    FUNC7(r_, pis_, pw_, outCols, outStride, ic);
    r_ += (outStride * 6);
  }

  // more than 2 rows left to process and we ended up on a non-multiple of 4
  if((yy < (outRows & 0xFFFFFFFE)) && ((yy % 4) != 0)) {
    // process 2 rows to align on the next multiple of 4 rows (because we were a multiple of 6 after the previous loop)
    float *pi_ = t_ + yy*ic;
    float *pw_ = k_;
    float *pis_ = pi_;
    FUNC3(r_, pis_, pw_, outCols, outStride, ic);
    r_ += (outStride * 2);
    yy += 2;
  }

  for(; yy < (outRows & 0xFFFFFFFC); yy += 4) {
    float *pi_ = t_ + yy*ic;
    float *pw_ = k_;
    float *pis_ = pi_;
    FUNC5(r_, pis_, pw_, outCols, outStride, ic);
    r_ += (outStride * 4);
  }

  for(; yy < (outRows & 0xFFFFFFFE); yy += 2) {
    float *pi_ = t_ + yy*ic;
    float *pw_ = k_;
    float *pis_ = pi_;
    FUNC3(r_, pis_, pw_, outCols, outStride, ic);
    r_ += (outStride * 2);
  }

  for(; yy < outRows; yy += 1) {
    float *pi_ = t_ + yy*ic;
    float *pw_ = k_;
    float *pis_ = pi_;
    FUNC2(r_, pis_, pw_, outCols, outStride, ic);
    r_ += (outStride * 1);
  }

  long procCols = outCols & 0xFFFFFFF8; // avx version processes 8 cols at a time
  long remCols = outCols - procCols;

  //process the rest using sse
  if( remCols > 0) {
    FUNC0();
    FUNC9(&output[procCols], &input[procCols], kernel, outRows, remCols, outStride, inCols);
  }
}