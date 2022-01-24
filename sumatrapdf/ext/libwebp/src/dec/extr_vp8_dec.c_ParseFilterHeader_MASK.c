#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ level_; void* simple_; void** mode_lf_delta_; void** ref_lf_delta_; void* use_lf_delta_; void* sharpness_; } ;
typedef  TYPE_1__ VP8FilterHeader ;
struct TYPE_10__ {int filter_type_; TYPE_1__ filter_hdr_; } ;
typedef  TYPE_2__ VP8Decoder ;
struct TYPE_11__ {int /*<<< orphan*/  eof_; } ;
typedef  TYPE_3__ VP8BitReader ;

/* Variables and functions */
 int NUM_MODE_LF_DELTAS ; 
 int NUM_REF_LF_DELTAS ; 
 void* FUNC0 (TYPE_3__*,char*) ; 
 void* FUNC1 (TYPE_3__*,int,char*) ; 
 void* FUNC2 (TYPE_3__*,int,char*) ; 

__attribute__((used)) static int FUNC3(VP8BitReader* br, VP8Decoder* const dec) {
  VP8FilterHeader* const hdr = &dec->filter_hdr_;
  hdr->simple_    = FUNC0(br, "global-header");
  hdr->level_     = FUNC2(br, 6, "global-header");
  hdr->sharpness_ = FUNC2(br, 3, "global-header");
  hdr->use_lf_delta_ = FUNC0(br, "global-header");
  if (hdr->use_lf_delta_) {
    if (FUNC0(br, "global-header")) {   // update lf-delta?
      int i;
      for (i = 0; i < NUM_REF_LF_DELTAS; ++i) {
        if (FUNC0(br, "global-header")) {
          hdr->ref_lf_delta_[i] = FUNC1(br, 6, "global-header");
        }
      }
      for (i = 0; i < NUM_MODE_LF_DELTAS; ++i) {
        if (FUNC0(br, "global-header")) {
          hdr->mode_lf_delta_[i] = FUNC1(br, 6, "global-header");
        }
      }
    }
  }
  dec->filter_type_ = (hdr->level_ == 0) ? 0 : hdr->simple_ ? 1 : 2;
  return !br->eof_;
}