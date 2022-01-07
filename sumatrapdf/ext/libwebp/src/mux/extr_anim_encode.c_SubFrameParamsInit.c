
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int should_try_; int empty_rect_allowed_; int sub_frame_lossy_; int sub_frame_ll_; } ;
typedef TYPE_1__ SubFrameParams ;


 int WebPPictureInit (int *) ;

__attribute__((used)) static int SubFrameParamsInit(SubFrameParams* const params,
                              int should_try, int empty_rect_allowed) {
  params->should_try_ = should_try;
  params->empty_rect_allowed_ = empty_rect_allowed;
  if (!WebPPictureInit(&params->sub_frame_ll_) ||
      !WebPPictureInit(&params->sub_frame_lossy_)) {
    return 0;
  }
  return 1;
}
