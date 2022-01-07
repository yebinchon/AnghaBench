
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t start_; size_t size_; int * encoded_frames_; } ;
typedef TYPE_1__ WebPAnimEncoder ;
typedef int EncodedFrame ;


 int assert (int) ;

__attribute__((used)) static EncodedFrame* GetFrame(const WebPAnimEncoder* const enc,
                              size_t position) {
  assert(enc->start_ + position < enc->size_);
  return &enc->encoded_frames_[enc->start_ + position];
}
