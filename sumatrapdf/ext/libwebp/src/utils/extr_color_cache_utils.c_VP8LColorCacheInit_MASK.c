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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int hash_shift_; int hash_bits_; int /*<<< orphan*/ * colors_; } ;
typedef  TYPE_1__ VP8LColorCache ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2(VP8LColorCache* const cc, int hash_bits) {
  const int hash_size = 1 << hash_bits;
  FUNC1(cc != NULL);
  FUNC1(hash_bits > 0);
  cc->colors_ = (uint32_t*)FUNC0((uint64_t)hash_size,
                                          sizeof(*cc->colors_));
  if (cc->colors_ == NULL) return 0;
  cc->hash_shift_ = 32 - hash_bits;
  cc->hash_bits_ = hash_bits;
  return 1;
}