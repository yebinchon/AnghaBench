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
typedef  int const uint32_t ;
struct TYPE_6__ {int bit_pos_; int /*<<< orphan*/  eos_; } ;
typedef  TYPE_1__ VP8LBitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int FUNC1 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int VP8L_MAX_NUM_BIT_READ ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* kBitMask ; 

uint32_t FUNC4(VP8LBitReader* const br, int n_bits) {
  FUNC3(n_bits >= 0);
  // Flag an error if end_of_stream or n_bits is more than allowed limit.
  if (!br->eos_ && n_bits <= VP8L_MAX_NUM_BIT_READ) {
    const uint32_t val = FUNC1(br) & kBitMask[n_bits];
    const int new_bits = br->bit_pos_ + n_bits;
    br->bit_pos_ = new_bits;
    FUNC0(br);
    return val;
  } else {
    FUNC2(br);
    return 0;
  }
}