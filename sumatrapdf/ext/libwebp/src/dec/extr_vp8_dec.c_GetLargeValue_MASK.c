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
typedef  int /*<<< orphan*/  VP8BitReader ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ * const,int const,char*) ; 
 int** kCat3456 ; 

__attribute__((used)) static int FUNC1(VP8BitReader* const br, const uint8_t* const p) {
  int v;
  if (!FUNC0(br, p[3], "coeffs")) {
    if (!FUNC0(br, p[4], "coeffs")) {
      v = 2;
    } else {
      v = 3 + FUNC0(br, p[5], "coeffs");
    }
  } else {
    if (!FUNC0(br, p[6], "coeffs")) {
      if (!FUNC0(br, p[7], "coeffs")) {
        v = 5 + FUNC0(br, 159, "coeffs");
      } else {
        v = 7 + 2 * FUNC0(br, 165, "coeffs");
        v += FUNC0(br, 145, "coeffs");
      }
    } else {
      const uint8_t* tab;
      const int bit1 = FUNC0(br, p[8], "coeffs");
      const int bit0 = FUNC0(br, p[9 + bit1], "coeffs");
      const int cat = 2 * bit1 + bit0;
      v = 0;
      for (tab = kCat3456[cat]; *tab; ++tab) {
        v += v + FUNC0(br, *tab, "coeffs");
      }
      v += 3 + (8 << cat);
    }
  }
  return v;
}