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
struct TYPE_3__ {int absolute_delta_; int /*<<< orphan*/  filter_strength_; int /*<<< orphan*/  quantizer_; scalar_t__ update_map_; scalar_t__ use_segment_; } ;
typedef  TYPE_1__ VP8SegmentHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(VP8SegmentHeader* const hdr) {
  FUNC0(hdr != NULL);
  hdr->use_segment_ = 0;
  hdr->update_map_ = 0;
  hdr->absolute_delta_ = 1;
  FUNC1(hdr->quantizer_, 0, sizeof(hdr->quantizer_));
  FUNC1(hdr->filter_strength_, 0, sizeof(hdr->filter_strength_));
}