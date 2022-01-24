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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  VP8BitWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(VP8BitWriter* const bw, uint32_t value, int nb_bits) {
  uint32_t mask;
  FUNC1(nb_bits > 0 && nb_bits < 32);
  for (mask = 1u << (nb_bits - 1); mask; mask >>= 1) {
    FUNC0(bw, value & mask);
  }
}