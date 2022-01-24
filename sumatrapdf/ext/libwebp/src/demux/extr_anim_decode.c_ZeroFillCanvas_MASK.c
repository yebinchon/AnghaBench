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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC1(uint8_t* buf, uint32_t canvas_width,
                          uint32_t canvas_height) {
  const uint64_t size =
      (uint64_t)canvas_width * canvas_height * NUM_CHANNELS * sizeof(*buf);
  if (size != (size_t)size) return 0;
  FUNC0(buf, 0, (size_t)size);
  return 1;
}