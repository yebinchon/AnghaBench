
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WebPPicture ;
struct TYPE_6__ {int width_; int height_; scalar_t__ x_offset_; scalar_t__ y_offset_; } ;
typedef TYPE_1__ FrameRectangle ;


 scalar_t__ IsEmptyRect (TYPE_1__* const) ;
 int MinimizeChangeRectangle (int const* const,int const* const,TYPE_1__* const,int,float) ;
 int SnapToEvenOffsets (TYPE_1__* const) ;
 int WebPPictureView (int const* const,scalar_t__,scalar_t__,int,int,int * const) ;
 int assert (int) ;

__attribute__((used)) static int GetSubRect(const WebPPicture* const prev_canvas,
                      const WebPPicture* const curr_canvas, int is_key_frame,
                      int is_first_frame, int empty_rect_allowed,
                      int is_lossless, float quality,
                      FrameRectangle* const rect,
                      WebPPicture* const sub_frame) {
  if (!is_key_frame || is_first_frame) {


    MinimizeChangeRectangle(prev_canvas, curr_canvas, rect,
                            is_lossless, quality);
  }

  if (IsEmptyRect(rect)) {
    if (empty_rect_allowed) {
      return 1;
    } else {
      rect->width_ = 1;
      rect->height_ = 1;
      assert(rect->x_offset_ == 0);
      assert(rect->y_offset_ == 0);
    }
  }

  SnapToEvenOffsets(rect);
  return WebPPictureView(curr_canvas, rect->x_offset_, rect->y_offset_,
                         rect->width_, rect->height_, sub_frame);
}
