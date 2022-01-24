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
struct TYPE_3__ {scalar_t__ distance_; scalar_t__ literal_; int /*<<< orphan*/ * is_used_; scalar_t__ alpha_; scalar_t__ blue_; scalar_t__ red_; int /*<<< orphan*/  palette_code_bits_; } ;
typedef  TYPE_1__ VP8LHistogram ;

/* Variables and functions */
 scalar_t__ NUM_DISTANCE_CODES ; 
 scalar_t__ NUM_LENGTH_CODES ; 
 scalar_t__ NUM_LITERAL_CODES ; 
 double FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

double FUNC3(VP8LHistogram* const p) {
  return
      FUNC0(p->literal_, FUNC2(p->palette_code_bits_),
                     NULL, &p->is_used_[0])
      + FUNC0(p->red_, NUM_LITERAL_CODES, NULL, &p->is_used_[1])
      + FUNC0(p->blue_, NUM_LITERAL_CODES, NULL, &p->is_used_[2])
      + FUNC0(p->alpha_, NUM_LITERAL_CODES, NULL, &p->is_used_[3])
      + FUNC0(p->distance_, NUM_DISTANCE_CODES, NULL, &p->is_used_[4])
      + FUNC1(p->literal_ + NUM_LITERAL_CODES, NUM_LENGTH_CODES)
      + FUNC1(p->distance_, NUM_DISTANCE_CODES);
}