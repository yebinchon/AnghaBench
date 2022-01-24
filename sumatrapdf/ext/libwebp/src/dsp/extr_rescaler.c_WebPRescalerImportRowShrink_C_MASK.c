#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int rescaler_t ;
struct TYPE_4__ {int num_channels; int dst_width; int x_sub; int const src_width; int* frow; int /*<<< orphan*/  fx_scale; scalar_t__ x_add; int /*<<< orphan*/  x_expand; } ;
typedef  TYPE_1__ WebPRescaler ;

/* Variables and functions */
 scalar_t__ FUNC0 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(WebPRescaler* const wrk,
                                   const uint8_t* src) {
  const int x_stride = wrk->num_channels;
  const int x_out_max = wrk->dst_width * wrk->num_channels;
  int channel;
  FUNC2(!FUNC1(wrk));
  FUNC2(!wrk->x_expand);
  for (channel = 0; channel < x_stride; ++channel) {
    int x_in = channel;
    int x_out = channel;
    uint32_t sum = 0;
    int accum = 0;
    while (x_out < x_out_max) {
      uint32_t base = 0;
      accum += wrk->x_add;
      while (accum > 0) {
        accum -= wrk->x_sub;
        FUNC2(x_in < wrk->src_width * x_stride);
        base = src[x_in];
        sum += base;
        x_in += x_stride;
      }
      {        // Emit next horizontal pixel.
        const rescaler_t frac = base * (-accum);
        wrk->frow[x_out] = sum * wrk->x_sub - frac;
        // fresh fractional start for next pixel
        sum = (int)FUNC0(frac, wrk->fx_scale);
      }
      x_out += x_stride;
    }
    FUNC2(accum == 0);
  }
}