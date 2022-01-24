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
typedef  int /*<<< orphan*/  WebPRescaler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ * const) ; 

int FUNC2(WebPRescaler* const rescaler) {
  int total_exported = 0;
  while (FUNC1(rescaler)) {
    FUNC0(rescaler);
    ++total_exported;
  }
  return total_exported;
}