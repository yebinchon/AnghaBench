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

/* Variables and functions */
 int /*<<< orphan*/  const FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int BPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC2(uint8_t* dst, const uint8_t* top) {    // vertical
  const uint8_t vals[4] = {
    FUNC0(top[-1], top[0], top[1]),
    FUNC0(top[ 0], top[1], top[2]),
    FUNC0(top[ 1], top[2], top[3]),
    FUNC0(top[ 2], top[3], top[4])
  };
  int i;
  for (i = 0; i < 4; ++i) {
    FUNC1(dst + i * BPS, vals, 4);
  }
}