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
typedef  int /*<<< orphan*/  VP8BitWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int,int) ; 

void FUNC2(VP8BitWriter* const bw, int value, int nb_bits) {
  if (!FUNC0(bw, value != 0)) return;
  if (value < 0) {
    FUNC1(bw, ((-value) << 1) | 1, nb_bits + 1);
  } else {
    FUNC1(bw, value << 1, nb_bits + 1);
  }
}