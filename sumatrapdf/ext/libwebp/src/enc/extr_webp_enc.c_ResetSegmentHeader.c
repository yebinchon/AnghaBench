
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_segments_; int update_map_; scalar_t__ size_; } ;
struct TYPE_6__ {TYPE_1__* config_; TYPE_3__ segment_hdr_; } ;
typedef TYPE_2__ VP8Encoder ;
typedef TYPE_3__ VP8EncSegmentHeader ;
struct TYPE_5__ {int segments; } ;



__attribute__((used)) static void ResetSegmentHeader(VP8Encoder* const enc) {
  VP8EncSegmentHeader* const hdr = &enc->segment_hdr_;
  hdr->num_segments_ = enc->config_->segments;
  hdr->update_map_ = (hdr->num_segments_ > 1);
  hdr->size_ = 0;
}
