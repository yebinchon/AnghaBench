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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int const,int const,int const) ; 
 int BPS ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

__attribute__((used)) static void FUNC2(uint8_t* dst, const uint8_t* top) {    // horizontal
  const int X = top[-1];
  const int I = top[-2];
  const int J = top[-3];
  const int K = top[-4];
  const int L = top[-5];
  FUNC1(dst + 0 * BPS, 0x01010101U * FUNC0(X, I, J));
  FUNC1(dst + 1 * BPS, 0x01010101U * FUNC0(I, J, K));
  FUNC1(dst + 2 * BPS, 0x01010101U * FUNC0(J, K, L));
  FUNC1(dst + 3 * BPS, 0x01010101U * FUNC0(K, L, L));
}