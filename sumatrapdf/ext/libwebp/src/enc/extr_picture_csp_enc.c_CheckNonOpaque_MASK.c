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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(const uint8_t* alpha, int width, int height,
                          int x_step, int y_step) {
  if (alpha == NULL) return 0;
  FUNC2();
  if (x_step == 1) {
    for (; height-- > 0; alpha += y_step) {
      if (FUNC1(alpha, width)) return 1;
    }
  } else {
    for (; height-- > 0; alpha += y_step) {
      if (FUNC0(alpha, width)) return 1;
    }
  }
  return 0;
}