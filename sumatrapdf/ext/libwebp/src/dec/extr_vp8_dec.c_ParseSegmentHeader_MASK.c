#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* update_map_; void** filter_strength_; void** quantizer_; void* absolute_delta_; void* use_segment_; } ;
typedef  TYPE_1__ VP8SegmentHeader ;
struct TYPE_11__ {unsigned int* segments_; } ;
typedef  TYPE_2__ VP8Proba ;
struct TYPE_12__ {int /*<<< orphan*/  eof_; } ;
typedef  TYPE_3__ VP8BitReader ;

/* Variables and functions */
 int MB_FEATURE_TREE_PROBS ; 
 int NUM_MB_SEGMENTS ; 
 void* FUNC0 (TYPE_3__*,char*) ; 
 void* FUNC1 (TYPE_3__*,int,char*) ; 
 unsigned int FUNC2 (TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(VP8BitReader* br,
                              VP8SegmentHeader* hdr, VP8Proba* proba) {
  FUNC3(br != NULL);
  FUNC3(hdr != NULL);
  hdr->use_segment_ = FUNC0(br, "global-header");
  if (hdr->use_segment_) {
    hdr->update_map_ = FUNC0(br, "global-header");
    if (FUNC0(br, "global-header")) {   // update data
      int s;
      hdr->absolute_delta_ = FUNC0(br, "global-header");
      for (s = 0; s < NUM_MB_SEGMENTS; ++s) {
        hdr->quantizer_[s] = FUNC0(br, "global-header") ?
            FUNC1(br, 7, "global-header") : 0;
      }
      for (s = 0; s < NUM_MB_SEGMENTS; ++s) {
        hdr->filter_strength_[s] = FUNC0(br, "global-header") ?
            FUNC1(br, 6, "global-header") : 0;
      }
    }
    if (hdr->update_map_) {
      int s;
      for (s = 0; s < MB_FEATURE_TREE_PROBS; ++s) {
        proba->segments_[s] = FUNC0(br, "global-header") ?
            FUNC2(br, 8, "global-header") : 255u;
      }
    }
  } else {
    hdr->update_map_ = 0;
  }
  return !br->eof_;
}