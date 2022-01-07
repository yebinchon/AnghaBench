
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int absolute_delta_; int filter_strength_; int quantizer_; scalar_t__ update_map_; scalar_t__ use_segment_; } ;
typedef TYPE_1__ VP8SegmentHeader ;


 int assert (int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void ResetSegmentHeader(VP8SegmentHeader* const hdr) {
  assert(hdr != ((void*)0));
  hdr->use_segment_ = 0;
  hdr->update_map_ = 0;
  hdr->absolute_delta_ = 1;
  memset(hdr->quantizer_, 0, sizeof(hdr->quantizer_));
  memset(hdr->filter_strength_, 0, sizeof(hdr->filter_strength_));
}
