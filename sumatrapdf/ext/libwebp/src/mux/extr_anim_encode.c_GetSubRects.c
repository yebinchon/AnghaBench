
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int height; int width; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_11__ {int height_; int width_; scalar_t__ y_offset_; scalar_t__ x_offset_; } ;
struct TYPE_10__ {int sub_frame_lossy_; TYPE_8__ rect_lossy_; int empty_rect_allowed_; TYPE_8__ rect_ll_; int sub_frame_ll_; } ;
typedef TYPE_2__ SubFrameParams ;


 int GetSubRect (TYPE_1__ const* const,TYPE_1__ const* const,int,int,int ,int,float,TYPE_8__*,int *) ;

__attribute__((used)) static int GetSubRects(const WebPPicture* const prev_canvas,
                       const WebPPicture* const curr_canvas, int is_key_frame,
                       int is_first_frame, float quality,
                       SubFrameParams* const params) {

  params->rect_ll_.x_offset_ = 0;
  params->rect_ll_.y_offset_ = 0;
  params->rect_ll_.width_ = curr_canvas->width;
  params->rect_ll_.height_ = curr_canvas->height;
  if (!GetSubRect(prev_canvas, curr_canvas, is_key_frame, is_first_frame,
                  params->empty_rect_allowed_, 1, quality,
                  &params->rect_ll_, &params->sub_frame_ll_)) {
    return 0;
  }

  params->rect_lossy_ = params->rect_ll_;
  return GetSubRect(prev_canvas, curr_canvas, is_key_frame, is_first_frame,
                    params->empty_rect_allowed_, 0, quality,
                    &params->rect_lossy_, &params->sub_frame_lossy_);
}
