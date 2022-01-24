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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 int FUNC1 (int const) ; 

__attribute__((used)) static int FUNC2(const uint8_t* const a, const uint8_t* const b,
                      const uint16_t* const w) {
  const int sum1 = FUNC0(a, w);
  const int sum2 = FUNC0(b, w);
  return FUNC1(sum2 - sum1) >> 5;
}