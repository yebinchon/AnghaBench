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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  SFormat ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ND_MUL2K_MAX_SHIFT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRFMT_T_FP_F ; 

__attribute__((used)) static uint32_t FUNC3(uint32_t* nd, uint32_t ndhi, uint32_t k,
			 uint32_t carry_in, SFormat sf)
{
  uint32_t i, ndlo = 0, start = 1;
  /* Performance hacks. */
  if (k > ND_MUL2K_MAX_SHIFT*2 && FUNC1(sf) != FUNC1(STRFMT_T_FP_F)) {
    start = ndhi - (FUNC2(sf) + 17) / 8;
  }
  /* Real logic. */
  while (k >= ND_MUL2K_MAX_SHIFT) {
    for (i = ndlo; i <= ndhi; i++) {
      uint64_t val = ((uint64_t)nd[i] << ND_MUL2K_MAX_SHIFT) | carry_in;
      carry_in = FUNC0(val);
      nd[i] = (uint32_t)val - carry_in * 1000000000;
    }
    if (carry_in) {
      nd[++ndhi] = carry_in; carry_in = 0;
      if(start++ == ndlo) ++ndlo;
    }
    k -= ND_MUL2K_MAX_SHIFT;
  }
  if (k) {
    for (i = ndlo; i <= ndhi; i++) {
      uint64_t val = ((uint64_t)nd[i] << k) | carry_in;
      carry_in = FUNC0(val);
      nd[i] = (uint32_t)val - carry_in * 1000000000;
    }
    if (carry_in) nd[++ndhi] = carry_in;
  }
  return ndhi;
}