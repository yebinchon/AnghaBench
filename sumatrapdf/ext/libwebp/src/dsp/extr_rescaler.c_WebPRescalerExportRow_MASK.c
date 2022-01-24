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
struct TYPE_6__ {scalar_t__ y_accum; scalar_t__ src_height; scalar_t__ dst_height; int x_add; int src_width; int dst_width; int num_channels; scalar_t__ y_add; int /*<<< orphan*/  dst_y; scalar_t__ dst_stride; scalar_t__* dst; scalar_t__* irow; scalar_t__ fxy_scale; scalar_t__ y_expand; } ;
typedef  TYPE_1__ WebPRescaler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(WebPRescaler* const wrk) {
  if (wrk->y_accum <= 0) {
    FUNC3(!FUNC2(wrk));
    if (wrk->y_expand) {
      FUNC0(wrk);
    } else if (wrk->fxy_scale) {
      FUNC1(wrk);
    } else {  // special case
      int i;
      FUNC3(wrk->src_height == wrk->dst_height && wrk->x_add == 1);
      FUNC3(wrk->src_width == 1 && wrk->dst_width <= 2);
      for (i = 0; i < wrk->num_channels * wrk->dst_width; ++i) {
        wrk->dst[i] = wrk->irow[i];
        wrk->irow[i] = 0;
      }
    }
    wrk->y_accum += wrk->y_add;
    wrk->dst += wrk->dst_stride;
    ++wrk->dst_y;
  }
}