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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ const FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__ const*,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC2(const uint8_t* prev, const uint8_t* in,
                               uint8_t* out, int width) {
  if (prev == NULL) {
    FUNC1(NULL, in, out, width);
  } else {
    uint8_t top = prev[0], top_left = top, left = top;
    int i;
    for (i = 0; i < width; ++i) {
      top = prev[i];  // need to read this first, in case prev==out
      left = (uint8_t)(in[i] + FUNC0(left, top, top_left));
      top_left = top;
      out[i] = left;
    }
  }
}