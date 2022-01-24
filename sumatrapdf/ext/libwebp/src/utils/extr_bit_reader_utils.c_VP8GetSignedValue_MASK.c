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
typedef  int const int32_t ;
typedef  int /*<<< orphan*/  VP8BitReader ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ * const,int,char const*) ; 

int32_t FUNC2(VP8BitReader* const br, int bits,
                          const char label[]) {
  const int value = FUNC1(br, bits, label);
  return FUNC0(br, label) ? -value : value;
}