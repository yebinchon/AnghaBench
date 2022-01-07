
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ width; scalar_t__ height; int argb_stride; int * argb; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_8__ {scalar_t__ x_offset_; scalar_t__ width_; scalar_t__ y_offset_; scalar_t__ height_; } ;
typedef TYPE_2__ FrameRectangle ;
typedef scalar_t__ (* ComparePixelsFunc ) (int const* const,int,int const* const,int,scalar_t__,int const) ;


 scalar_t__ ComparePixelsLossless (int const* const,int,int const* const,int,scalar_t__,int const) ;
 scalar_t__ ComparePixelsLossy (int const* const,int,int const* const,int,scalar_t__,int const) ;
 scalar_t__ IsEmptyRect (TYPE_2__* const) ;
 int QualityToMaxDiff (float) ;
 int assert (int) ;

__attribute__((used)) static void MinimizeChangeRectangle(const WebPPicture* const src,
                                    const WebPPicture* const dst,
                                    FrameRectangle* const rect,
                                    int is_lossless, float quality) {
  int i, j;
  const ComparePixelsFunc compare_pixels =
      is_lossless ? ComparePixelsLossless : ComparePixelsLossy;
  const int max_allowed_diff_lossy = QualityToMaxDiff(quality);
  const int max_allowed_diff = is_lossless ? 0 : max_allowed_diff_lossy;


  assert(src->width == dst->width && src->height == dst->height);
  assert(rect->x_offset_ + rect->width_ <= dst->width);
  assert(rect->y_offset_ + rect->height_ <= dst->height);


  for (i = rect->x_offset_; i < rect->x_offset_ + rect->width_; ++i) {
    const uint32_t* const src_argb =
        &src->argb[rect->y_offset_ * src->argb_stride + i];
    const uint32_t* const dst_argb =
        &dst->argb[rect->y_offset_ * dst->argb_stride + i];
    if (compare_pixels(src_argb, src->argb_stride, dst_argb, dst->argb_stride,
                       rect->height_, max_allowed_diff)) {
      --rect->width_;
      ++rect->x_offset_;
    } else {
      break;
    }
  }
  if (rect->width_ == 0) goto NoChange;


  for (i = rect->x_offset_ + rect->width_ - 1; i >= rect->x_offset_; --i) {
    const uint32_t* const src_argb =
        &src->argb[rect->y_offset_ * src->argb_stride + i];
    const uint32_t* const dst_argb =
        &dst->argb[rect->y_offset_ * dst->argb_stride + i];
    if (compare_pixels(src_argb, src->argb_stride, dst_argb, dst->argb_stride,
                       rect->height_, max_allowed_diff)) {
      --rect->width_;
    } else {
      break;
    }
  }
  if (rect->width_ == 0) goto NoChange;


  for (j = rect->y_offset_; j < rect->y_offset_ + rect->height_; ++j) {
    const uint32_t* const src_argb =
        &src->argb[j * src->argb_stride + rect->x_offset_];
    const uint32_t* const dst_argb =
        &dst->argb[j * dst->argb_stride + rect->x_offset_];
    if (compare_pixels(src_argb, 1, dst_argb, 1, rect->width_,
                       max_allowed_diff)) {
      --rect->height_;
      ++rect->y_offset_;
    } else {
      break;
    }
  }
  if (rect->height_ == 0) goto NoChange;


  for (j = rect->y_offset_ + rect->height_ - 1; j >= rect->y_offset_; --j) {
    const uint32_t* const src_argb =
        &src->argb[j * src->argb_stride + rect->x_offset_];
    const uint32_t* const dst_argb =
        &dst->argb[j * dst->argb_stride + rect->x_offset_];
    if (compare_pixels(src_argb, 1, dst_argb, 1, rect->width_,
                       max_allowed_diff)) {
      --rect->height_;
    } else {
      break;
    }
  }
  if (rect->height_ == 0) goto NoChange;

  if (IsEmptyRect(rect)) {
 NoChange:
    rect->x_offset_ = 0;
    rect->y_offset_ = 0;
    rect->width_ = 0;
    rect->height_ = 0;
  }
}
