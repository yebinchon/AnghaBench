#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int last_non_zero; scalar_t__ max_value; } ;
typedef  TYPE_1__ VP8Histogram ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(VP8Histogram* const histo) {
  histo->max_value = 0;
  histo->last_non_zero = 1;
}