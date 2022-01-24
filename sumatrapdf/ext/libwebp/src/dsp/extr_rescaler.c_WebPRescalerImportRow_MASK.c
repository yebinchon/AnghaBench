#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  x_expand; } ;
typedef  TYPE_1__ WebPRescaler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(WebPRescaler* const wrk, const uint8_t* src) {
  FUNC3(!FUNC2(wrk));
  if (!wrk->x_expand) {
    FUNC1(wrk, src);
  } else {
    FUNC0(wrk, src);
  }
}