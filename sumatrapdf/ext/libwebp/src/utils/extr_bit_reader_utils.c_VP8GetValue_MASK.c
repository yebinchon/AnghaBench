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
typedef  int /*<<< orphan*/  VP8BitReader ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ * const,int,char const*) ; 

uint32_t FUNC1(VP8BitReader* const br, int bits, const char label[]) {
  uint32_t v = 0;
  while (bits-- > 0) {
    v |= FUNC0(br, 0x80, label) << bits;
  }
  return v;
}