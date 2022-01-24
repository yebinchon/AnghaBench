#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned int* segments_; } ;
struct TYPE_8__ {int num_segments_; int update_map_; } ;
struct TYPE_7__ {TYPE_1__* dqm_; TYPE_4__ proba_; TYPE_3__ segment_hdr_; } ;
typedef  TYPE_2__ VP8Encoder ;
typedef  TYPE_3__ VP8EncSegmentHeader ;
typedef  TYPE_4__ VP8EncProba ;
typedef  int /*<<< orphan*/  VP8BitWriter ;
struct TYPE_6__ {int /*<<< orphan*/  fstrength_; int /*<<< orphan*/  quant_; } ;

/* Variables and functions */
 int NUM_MB_SEGMENTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(VP8BitWriter* const bw,
                             const VP8Encoder* const enc) {
  const VP8EncSegmentHeader* const hdr = &enc->segment_hdr_;
  const VP8EncProba* const proba = &enc->proba_;
  if (FUNC0(bw, (hdr->num_segments_ > 1))) {
    // We always 'update' the quant and filter strength values
    const int update_data = 1;
    int s;
    FUNC0(bw, hdr->update_map_);
    if (FUNC0(bw, update_data)) {
      // we always use absolute values, not relative ones
      FUNC0(bw, 1);   // (segment_feature_mode = 1. Paragraph 9.3.)
      for (s = 0; s < NUM_MB_SEGMENTS; ++s) {
        FUNC2(bw, enc->dqm_[s].quant_, 7);
      }
      for (s = 0; s < NUM_MB_SEGMENTS; ++s) {
        FUNC2(bw, enc->dqm_[s].fstrength_, 6);
      }
    }
    if (hdr->update_map_) {
      for (s = 0; s < 3; ++s) {
        if (FUNC0(bw, (proba->segments_[s] != 255u))) {
          FUNC1(bw, proba->segments_[s], 8);
        }
      }
    }
  }
}